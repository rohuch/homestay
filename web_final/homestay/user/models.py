from django.db import models

class Room(models.Model):
    name = models.CharField(max_length=250, null=True)
    price = models.DecimalField(max_digits=8, decimal_places=2)
    image = models.ImageField(null=True, blank=True)
    image2 = models.ImageField(null=True, blank=True)
    text = models.TextField(max_length=20000, null=True)

    def __str__(self):
        return self.name

    @property
    def image_URL(self):
        try:
            url = self.image.url
        except:
            url = ''

        return url

    @property
    def image2_URL(self):
        try:
            url = self.image2.url
        except:
            url = ''

        return url


class Reserve(models.Model):
    name = models.CharField(max_length=250,null=True)
    roomcode = models.CharField(max_length=5,null=True)
    email = models.CharField(max_length=100, null=True)
    date = models.DateField(max_length=100, null=True)