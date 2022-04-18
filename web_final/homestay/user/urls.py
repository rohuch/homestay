from django.conf import settings
from django.conf.urls.static import static
from django.urls import path

from .views import home, experiences, impact, about, SignUpView, first, AddBookingView, BookingView, \
    RoomView, RoomUpdate, RoomDelete, admin_works, ReserveFormView, get_Reserve, UserDeleteView, totaL

urlpatterns = [
    path('', first, name='first'),
    path('home', home, name='home'),
    path('experiences', experiences, name='experiences'),
    path('impact', impact, name='impact'),
    path('about', about, name='about'),
    path('signup/', SignUpView.as_view(), name='signup'),
    path('addbooking', AddBookingView.as_view(), name='AddBookingView'),
    path('booking/', BookingView, name='booking' ),
    path('room/view/<int:pk>/', RoomView.as_view(), name='roomview'),
    path('room/<int:pk>/update', RoomUpdate.as_view(), name="update"),
    path('room/<int:pk>/delete', RoomDelete.as_view(), name="delete"),
    path('admin-works', admin_works, name='adminworks'),
    path('reserve', ReserveFormView.as_view(),name='reserve'),
    path('getReserve',get_Reserve,name='get_Reserve'),
    path('reserve/<int:pk>/delete/user', UserDeleteView.as_view(), name='delete_user'),
    path('total-users-admins', totaL, name = "total"),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


