from django.shortcuts import render
from app5.models import *
from adminapp.models import *

from django.http import HttpResponseRedirect
import os
import random
import string
from django.conf import settings
from django.core.mail import send_mail
import datetime
import hashlib 
# from django.contrib.auth.models import User
# Create your views here.

def index(request):
	data=form_tb.objects.all()
	catagory=form_tb.objects.raw('SELECT * FROM app5_form_tb  GROUP BY catagory')
	return render(request,'index.html',{"prd":data,"catagory":catagory})


def about(request):
	catagory=form_tb.objects.raw('SELECT * FROM app5_form_tb  GROUP BY catagory')
	return render(request,'about.html',{"catagory":catagory})



def contact(request):
	catagory=form_tb.objects.raw('SELECT * FROM app5_form_tb GROUP BY catagory')
	if request.method == "POST":
		cname=request.POST['Name']
		cemail=request.POST['Email']
		cmessage=request.POST['Message']
		check=cont_tb.objects.filter(name=cname,email=cemail,message=cmessage)
		if check:
			return render(request,'contact.html',{"error":"already registered phno"})
		else:
			add=cont_tb(name=cname,email=cemail,message=cmessage)
			add.save()
			subject = 'Contact Form'
			# amessage = f'Hi a message from {cname} {cemail}, subjects is {csubject}, message is {cmessage} thank you .'
			usermessage = f'Hi {cname}, thank you for getting  in touch with us '
			adminmessage= f'message from {cname}'+'        '+cmessage
			nsub=f'new messge --[{cmessage}]'
			mail_sender( "message recieved", usermessage,cemail)
			mail_sender(nsub,adminmessage,settings.EMAIL_HOST_USER )


			# email_from = settings.EMAIL_HOST_USER 
			# recipient_list = [settings.EMAIL_HOST_USER, ] 
			# send_mail( subject, message, email_from, recipient_list ) 
			return render(request,'index.html',{"success":"email saved"})
	else:
		return render(request,'contact.html',{"catagory":catagory})

def mail_sender(subject,message, recipient):
	email_from =  settings.EMAIL_HOST_USER 
	recipient_list = [recipient, ] 
	send_mail( subject, message, email_from, recipient_list ) 
	


def signin(request):
	catagory=form_tb.objects.raw('SELECT * FROM app5_form_tb  GROUP BY catagory')
	if request.method == "POST":
		cemail=request.POST['Email']
		cpassword=request.POST['Password']
		hashpass=hashlib.md5(cpassword.encode('utf8')).hexdigest()
		check=signup_tb.objects.filter(email=cemail,password=cpassword,hashpassword=hashpass)
		if check:
			for x in check:
				request.session["myid"]=x.id
				request.session["myname"]=x.name
			return render(request,'index.html',{"success":"login success"})
		else:
			return render(request,'login.html',{"error":"invalid details"})
	else:
		return render(request,'login.html',{"catagory":catagory})




def logout(request):
	 # catagory=form_tb.objects.raw('SELECT * FROM app5_form_tb  GROUP BY catagory')
	if request.session.has_key('myid'):
		del request.session['myid']
		del request.session['myname']

	return HttpResponseRedirect('/')



def signup(request):
	catagory=form_tb.objects.raw('SELECT * FROM app5_form_tb  GROUP BY catagory')
	if request.method == "POST":
		cname=request.POST['Name']
		cemail=request.POST['Email']
		cpassword=request.POST['Password']
		cpassword2=request.POST['ConfirmPassword']
		hashpass=hashlib.md5(cpassword.encode('utf8')).hexdigest()
		check=signup_tb.objects.filter(email=cemail)
		if cpassword == cpassword2:
			if check:
				return render(request,'registered.html',{"error":"already registered email"})
			else:
				add=signup_tb(name=cname,email=cemail,password=cpassword,hashpassword=hashpass)
				add.save()
				return render(request,'index.html',{"success":"email saved"})
		else:
			return render(request,'registered.html',{"error":"password does not match"})
	else:
		return render(request,'registered.html',{"catagory":catagory})




def beverages(request):
	catagory=form_tb.objects.raw('SELECT * FROM app5_form_tb GROUP BY catagory')
	return render(request,'beverages.html')


# def checkout(request):
# 	if request.session.has_key('myid'):
# 		catagory=form_tb.objects.raw('SELECT * FROM app5_form_tb GROUP BY catagory')
# 		uid=request.session["myid"]
# 		uidd=signup_tb.objects.get(id=uid)
# 		check=cart_tb.objects.filter(uid=uidd,status="pending")
# 		total=0
# 		for x in check:
# 			price=x.totalamount
# 			total=float(price)+total
# 		return render(request,"checkout.html",{"check":check,"total":total,"catagory":catagory})

# 	else:
# 		return HttpResponseRedirect('/signin/')
	



def faq(request):
	catagory=form_tb.objects.raw('SELECT * FROM app5_form_tb  GROUP BY catagory')
	return render(request,'faq.html')


def groceries(request):
	data=form_tb.objects.all()
	catagory=form_tb.objects.raw('SELECT * FROM app5_form_tb  GROUP BY catagory')
	return render(request,'groceries.html',{"prd":data,"catagory":catagory})



def household(request):
	data=form_tb.objects.all()
	catagory=form_tb.objects.raw('SELECT * FROM app5_form_tb  GROUP BY catagory')
	return render(request,'household.html',{"prd":data,"catagory":catagory})

def personalcare(request):
	data=form_tb.objects.all()
	catagory=form_tb.objects.raw('SELECT * FROM app5_form_tb  GROUP BY catagory')
	return render(request,'personalcare.html',{"prd":data,"catagory":catagory})



def packagedfoods(request):
	data=form_tb.objects.all()
	catagory=form_tb.objects.raw('SELECT * FROM app5_form_tb  GROUP BY catagory')
	return render(request,'packagedfoods.html',{"prd":data,"catagory":catagory})


def beverages(request):
	data=form_tb.objects.all()
	catagory=form_tb.objects.raw('SELECT * FROM app5_form_tb  GROUP BY catagory')
	return render(request,'beverages.html',{"prd":data,"catagory":catagory})



def payment(request):
	catagory=form_tb.objects.raw('SELECT * FROM app5_form_tb  GROUP BY catagory')
	if request.method == "POST":
		uid=request.session["myid"]
		uidd=signup_tb.objects.get(id=uid)
		total=request.POST['total']
		cdate=datetime.datetime.now().date()
		ctime=datetime.datetime.now().time()
		add=payment_tb(uid=uidd,totalamount=total,status="paid",date=cdate,time=ctime)
		add.save()
		cart_tb.objects.filter(uid=uidd,status="pending").update(status="paid")
		return HttpResponseRedirect("/")
	else:
		total=request.GET['gt']
		return render(request,'payment.html',{"catagory":catagory,"total":total})




def products(request):
	if request.session.has_key('myid'):
		catagory=form_tb.objects.raw('SELECT * FROM app5_form_tb  GROUP BY catagory')
		pid=request.GET["pid"]
		data=form_tb.objects.filter(id=pid)
		products=form_tb.objects.all()
		return render(request,'products.html',{"prd":data,"catagory":catagory,"products":products})
	else:
		return HttpResponseRedirect('/signin/')
	return render(request,'products.html',{"prd":data,"catagory":catagory})



def short_codes(request):
	catagory=form_tb.objects.raw('SELECT * FROM app5_form_tb  GROUP BY catagory')
	return render(request,'short_codes.html')



def single(request):
	if request.session.has_key('myid'):
		catagory=form_tb.objects.raw('SELECT * FROM app5_form_tb  GROUP BY catagory')
		pid=request.GET["pid"]
		data=form_tb.objects.filter(id=pid)
		products=form_tb.objects.all()
		return render(request,'single.html',{"prd":data,"catagory":catagory,"products":products})
	else:
		return HttpResponseRedirect('/signin/')
	return render(request,'single.html',{"prd":data,"catagory":catagory})



def offers(request):
	data=form_tb.objects.all()
	catagory=form_tb.objects.raw('SELECT * FROM app5_form_tb  GROUP BY catagory')
	return render(request,'offers.html',{"prd":data,"catagory":catagory})



def cart(request):
	if request.session.has_key('myid'):
		catagory=form_tb.objects.raw('SELECT * FROM app5_form_tb GROUP BY catagory')
		uid=request.session["myid"]
		uidd=signup_tb.objects.get(id=uid)
		cart=cart_tb.objects.filter(uid=uidd,status="pending")
		total=0
		for x in cart:
			price=x.totalamount
			total=float(price)+total
		return render(request,"cart.html",{"cart":cart,"total":total,"catagory":catagory})

	else:
		return HttpResponseRedirect('/signin/')



def updatecart(request):
	cid=request.GET['cid']
	qty=request.POST['qty']
	cart=cart_tb.objects.filter(id=cid)
	total=0
	for x in cart:
		price=x.pid.offprice
	delv=(int(price)*10)/100
	total=(float(delv)+int(price))*int(qty)
	cart_tb.objects.filter(id=cid).update(quantity=qty,totalamount=total)
	return HttpResponseRedirect("/cart/")

def removecart(request):
	cid=request.GET['cid']
	cart_tb.objects.filter(id=cid).delete()
	return HttpResponseRedirect("/cart/")



def addtocart(request):

	catagory=form_tb.objects.raw('SELECT * FROM app3_form_tb  GROUP BY catagory')
	if request.method=="POST":
		pid=request.GET["pid"]
		pidd=form_tb.objects.get(id=pid)
		uid=request.session["myid"]
		uidd=signup_tb.objects.get(id=uid)
		prd=form_tb.objects.filter(id=pid)
		total=0
		for x in prd:
			amount=x.offprice
		total=((int(amount)*10)/100+int(amount))
		check=cart_tb.objects.filter(pid=pidd,uid=uidd,status="pending")
		if check:
			uid=request.session["myid"]
			uidd=signup_tb.objects.get(id=uid)
			cart=cart_tb.objects.filter(uid=uidd,status="pending")
			total=0
			for x in cart:
				price=x.totalamount
				total=float(price)+total
			return render(request,"cart.html",{"cart":cart,"total":total,"catagory":catagory})
		else:

			add=cart_tb(pid=pidd,uid=uidd,quantity=1,totalamount=total)
			add.save()
			return HttpResponseRedirect("/cart/",{"success":"product saved"})
	else:
		pid=request.GET["pid"]
		data=form_tb .objects.filter(id=pid)
		return render(request,'single.html',{"prd":data,"catagory":catagory})