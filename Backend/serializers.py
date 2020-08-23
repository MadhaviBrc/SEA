from rest_framework import serializers
from .models import User
from .models import Infrastructure
from .models import Class
from .models import Section
from .models import Academic_years

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username', 'password', 'email')

class InfrastructureSerializer(serializers.ModelSerializer):
    class Meta:
        model = Infrastructure
        fields = '__all__'

class ClassSerializer(serializers.ModelSerializer):
    class Meta:
        model = Class
        fields = '__all__'

class SectionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Section
        fields = '__all__'

class Academic_yearsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Academic_years
        fields = '__all__'

