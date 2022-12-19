from django.db import models

# Create your models here.


class cont_tb(models.Model):
	name=models.CharField(max_length=255)
	subject=models.CharField(max_length=255)
	email=models.CharField(max_length=255)
	message=models.TextField()


# class product_tb(models.Model):
# 	name=models.CharField(max_length=255)
# 	price=models.CharField(max_length=255)
# 	offprice=models.CharField(max_length=255)
# 	details=models.TextField()
# 	proimage=models.ImageField(upload_to="product/")
# 	category=models.CharField(max_length=255)




 	