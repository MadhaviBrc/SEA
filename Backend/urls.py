from django.urls import path,re_path
from django.conf.urls import url 
from . import views

urlpatterns = [
    path('api/users/', views.UserListCreate.as_view() ),
    path('api/users/<int:pk>/', views.DetailUser.as_view()),


]