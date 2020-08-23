from django.db import models

class User(models.Model):
    username = models.CharField(max_length=100)
    password = models.CharField(max_length=20)
    email = models.EmailField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)    

class Infrastructure(models.Model):
    c_name = models.CharField(max_length=500)
    c_code = models.CharField(max_length=100)
    c_address = models.CharField(max_length=1000)
    c_description = models.CharField(max_length=1000)
    c_logo = models.CharField(max_length=500)
    i_main_branch = models.IntegerField()
    i_parent_branch = models.IntegerField()
    c_status = models.CharField(max_length=10)
    d_created_at = models.DateTimeField(auto_now_add=True)
    d_updated_at = models.DateTimeField(auto_now=True)
    c_created_by = models.CharField(max_length=50)
    c_updated_by = models.CharField(max_length=50)

class Class(models.Model):
    i_class_id = models.AutoField(primary_key=True)
    c_class_name = models.CharField(max_length=100)
    c_description = models.CharField(max_length=1000)
    i_branch_id = models.IntegerField()
    c_status = models.CharField(max_length=10)
    d_created_at = models.DateTimeField(auto_now_add=True)
    d_updated_at = models.DateTimeField(auto_now=True)
    c_created_by = models.CharField(max_length=50)
    c_updated_by = models.CharField(max_length=50)

class Section(models.Model):
    i_section_id = models.AutoField(primary_key=True)
    c_section_name = models.CharField(max_length=100)
    c_description = models.CharField(max_length=1000)
    i_class_id = models.IntegerField()
    c_status = models.CharField(max_length=10)
    d_created_at = models.DateTimeField(auto_now_add=True)
    d_updated_at = models.DateTimeField(auto_now=True)
    c_created_by = models.CharField(max_length=50)
    c_updated_by = models.CharField(max_length=50)

class Academic_years(models.Model):
    i_year_id = models.AutoField(primary_key=True)
    c_academic_year = models.CharField(max_length=50)
    c_description = models.CharField(max_length=1000)
    c_status = models.CharField(max_length=10)
    d_created_at = models.DateTimeField(auto_now_add=True)
    d_updated_at = models.DateTimeField(auto_now=True)
    c_created_by = models.CharField(max_length=50)
    c_updated_by = models.CharField(max_length=50)

