from .models import User
from .models import Infrastructure
from .models import Class
from .models import Section
from .models import Academic_years
from .serializers import UserSerializer
from .serializers import InfrastructureSerializer
from .serializers import ClassSerializer
from .serializers import SectionSerializer
from .serializers import Academic_yearsSerializer
from rest_framework.decorators import api_view
from rest_framework import generics,status
from rest_framework.response import Response
from django.http import JsonResponse
from rest_framework.parsers import JSONParser



class UserListCreate(generics.ListCreateAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer

class DetailUser(generics.RetrieveUpdateDestroyAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer

class InfrastructureListCreate(generics.ListCreateAPIView):
    queryset = Infrastructure.objects.all()
    serializer_class = InfrastructureSerializer

class ClassListCreate(generics.ListCreateAPIView):
    queryset = Class.objects.all()
    serializer_class = ClassSerializer

class SectionListCreate(generics.ListCreateAPIView):
    queryset = Section.objects.all()
    serializer_class = SectionSerializer

class Academic_yearsListCreate(generics.ListCreateAPIView):
    queryset = Academic_years.objects.all()
    serializer_class = Academic_yearsSerializer



        