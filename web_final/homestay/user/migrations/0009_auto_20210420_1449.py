# Generated by Django 3.1.6 on 2021-04-20 09:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user', '0008_auto_20210420_1233'),
    ]

    operations = [
        migrations.AlterField(
            model_name='reserve',
            name='date',
            field=models.DateField(max_length=100, null=True),
        ),
    ]
