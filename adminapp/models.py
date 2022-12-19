from django.db import models

# Create your models here.

class form_tb(models.Model):
	name=models.CharField(max_length=255)
	price=models.CharField(max_length=255)
	offprice=models.CharField(max_length=255)
	details=models.TextField()
	catagory=models.CharField(max_length=255)
	proimage=models.ImageField(upload_to="product/")



class signup_tb(models.Model):
	name=models.CharField(max_length=255)
	email=models.CharField(max_length=255)
	message=models.CharField(max_length=255)
	password=models.CharField(max_length=255)
	hashpassword=models.TextField()




class admin_tb(models.Model):
	name=models.CharField(max_length=255)
	email=models.CharField(max_length=255)
	phone=models.CharField(max_length=255)
	password=models.CharField(max_length=255)


	
	
class payment_tb(models.Model):
	uid=models.ForeignKey(signup_tb, on_delete=models.CASCADE)
	totalamount=models.CharField(max_length=255)
	status=models.CharField(max_length=255)
	date=models.DateField()
	time=models.TimeField()





class cart_tb(models.Model):
	pid = models.ForeignKey(form_tb, on_delete=models.CASCADE)
	uid = models.ForeignKey(signup_tb, on_delete=models.CASCADE)
	quantity=models.CharField(max_length=255)
	totalamount=models.CharField(max_length=255)
	status=models.CharField(max_length=255,default="pending")

