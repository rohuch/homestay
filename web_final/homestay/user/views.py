from django.contrib.auth.forms import UserCreationForm, PasswordResetForm
from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.views import generic
from django.contrib.auth.models import User
from django.urls import reverse_lazy
from .models import Room, Reserve
from django.views.generic import CreateView, UpdateView, DeleteView, DetailView, ListView, FormView


@login_required()
def home(request):

    return render(request, 'user/home.html')

@login_required()
def experiences(request):
    return render(request, 'experiences.html')

@login_required()
def impact(request):
    return render(request, 'impact.html')

@login_required()
def about(request):
    return render(request, 'about.html')


class SignUpView(generic.CreateView):
    form_class = UserCreationForm
    success_url = reverse_lazy('login')
    template_name = 'signup.html'


def first(request):
    return render(request, 'user/first.html')


class AddBookingView(CreateView):
    model = Room
    template_name = 'addBooking.html'
    fields = '__all__'
    success_url = reverse_lazy('booking')

@login_required()
def BookingView(request):
    rooms = Room.objects.all()
    context = {'rooms': rooms}
    return render(request, 'booking.html', context)


class RoomView(DetailView):
    model = Room
    template_name = 'view.html'


class RoomUpdate(UpdateView):
    model = Room
    template_name = 'update.html'
    fields = '__all__'
    success_url = reverse_lazy('booking')


class RoomDelete(DeleteView):
    model = Room
    template_name = 'delete.html'
    success_url = reverse_lazy('booking')


def admin_works(request):
    return render(request, 'admin-works.html')


class ReserveFormView(CreateView):
    model = Reserve
    fields = '__all__'
    template_name = 'reserve.html'
    success_url = reverse_lazy('home')


def get_Reserve(request):
    reserves = Reserve.objects.all()
    context = {
        'reserves': reserves,
        'active_reserve': 'active'
    }
    return render(request, 'getReserve.html', context)


class UserDeleteView(DeleteView):
    model = Reserve
    template_name = 'delete_user.html'
    success_url = reverse_lazy('get_Reserve')


@login_required()
def totaL(request):
    room = Room.objects.all()
    room_count = room.count()
    reserve = Reserve.objects.all()
    reserve_count = reserve.count()
    users = User.objects.all()
    users_count = users.filter(is_staff=0).count()
    admin_count = users.filter(is_staff=1).count()
    context = {
        'rooms': room_count,
        'reserve': reserve_count,
        'user': users_count,
        'admin': admin_count
    }
    return render(request, 'total.html', context)