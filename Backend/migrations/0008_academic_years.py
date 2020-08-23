# Generated by Django 3.0.8 on 2020-07-29 11:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Backend', '0007_auto_20200729_1556'),
    ]

    operations = [
        migrations.CreateModel(
            name='Academic_years',
            fields=[
                ('i_year_id', models.AutoField(primary_key=True, serialize=False)),
                ('c_academic_year', models.CharField(max_length=50)),
                ('c_description', models.CharField(max_length=1000)),
                ('c_status', models.CharField(max_length=10)),
                ('d_created_at', models.DateTimeField(auto_now_add=True)),
                ('d_updated_at', models.DateTimeField(auto_now=True)),
                ('c_created_by', models.CharField(max_length=50)),
                ('c_updated_by', models.CharField(max_length=50)),
            ],
        ),
    ]
