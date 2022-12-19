from django.shortcuts import render
from adminapp.models import *
from django.http import HttpResponseRedirect
import os
import random
import string
from django.conf import settings
from django.core.mail import send_mail
import hashlib 
import datetime
from django.contrib.auth.models import User
# Create your views here.



def admin_index(request):
	if request.session.has_key('aid'):
		return render(request,'admin/index.html')
	else:
		return HttpResponseRedirect('/admin_login/')





def admin_login(request):
	if request.method == "POST":
		cemail=request.POST['Email']
		cpassword=request.POST['Password']
		login=User.objects.filter(email=cemail,password=cpassword)
		if login:
			for x in login:
				request.session["aid"]=x.id
				request.session["aname"]=x.username
			return HttpResponseRedirect("/myadmin/index/")
		else:
			return render(request,'admin/login.html',{"error":"invalid details"})
	else:
		return render(request,'admin/login.html')
	
def admin_logout(request):
	if request.session.has_key('aid'):
		del request.session['aid']
		del request.session['aname']
	return HttpResponseRedirect('/myadmin/')




def admin_register(request):
	if request.method == "POST":
		cname=request.POST['Name']
		cemail=request.POST['Email']
		cphone=request.POST['Phone']
		cpassword=request.POST['Password']
		check=admin_tb.objects.filter(email=cemail)
		if check:
			return render(request,'admin/register.html',{"error":"already registered email"})
		else:
			add=admin_tb(name=cname,email=cemail,phone=cphone,password=cpassword)
			add.save()
			return render(request,'admin/login.html',{"success":"email saved"})
	else:
		return render(request,'admin/register.html')






def admin_forms(request):
	if request.method == "POST":
		cname=request.POST['Name']
		cprice=request.POST['Price']
		coffprice=request.POST['Offprice']
		cdetails=request.POST['Details']
		ccatagory=request.POST['Catagory']
		cproimage=request.FILES['Proimage']
		check=form_tb.objects.filter(name=cname)
		if check:
			return render(request,'admin/forms.html',{"error":"already registered product"})
		else:
			add=form_tb(name=cname,price=cprice,offprice=coffprice,details=cdetails,catagory=ccatagory,proimage=cproimage)
			add.save()
			return render(request,'admin/forms.html',{"success":"product saved"})
	else:
		return render(request,'admin/forms.html')






def admin_basic_table(request):
	data=form_tb.objects.all()
	return render(request,'admin/basic_tables.html',{"prd":data})



	

def admin_basic_update(request):
	if request.method == "POST":
		cname=request.POST['Name']
		cprice=request.POST['Price']
		coffprice=request.POST['Offprice']
		cdetails=request.POST['Details']
		prdid=request.GET['pid']
		ccatagory=request.POST['Catagory']
		imgup=request.POST['imgup']
		if imgup == "yes":
			cproimage=request.FILES['Proimage']
			oldrec=form_tb.objects.filter(id=prdid)
			updrec=form_tb.objects.get(id=prdid)
			for x in oldrec:
				imgurl=x.proimage.url
				pathtoimage=os.path.dirname(os.path.dirname(os.path.abspath(__file__)))+imgurl
				if os.path.exists(pathtoimage):
					os.remove(pathtoimage)
					print('Successfully deleted')
			updrec.proimage=cproimage
			updrec.save()


		data=form_tb.objects.filter(id=prdid).update(name=cname,price=cprice,offprice=coffprice,details=cdetails,catagory=ccatagory)
		return HttpResponseRedirect('/myadmin/forms/')
	else:
		prdid=request.GET['pid']
		data=form_tb.objects.filter(id=prdid)
		return render(request,'admin/basic_update.html',{"details":data})	





def admin_basic_delete(request):
	prdid=request.GET['pid']
	oldrec=form_tb.objects.filter(id=prdid)
	for x in oldrec:
		imgurl=x.proimage.url
		pathtoimage=os.path.dirname(os.path.dirname(os.path.abspath(__file__)))+imgurl
		if os.path.exists(pathtoimage):
			os.remove(pathtoimage)
			print('Successfully deleted')
	data=form_tb.objects.filter(id=prdid).delete()
	return HttpResponseRedirect('/myadmin/forms/')



def admin_form_component(request):
	data=form_tb.objects.all()
	return render(request,'admin/form_component.html')




def admin_order_table(request):
	data=cart_tb.objects.all()
	return render(request,'admin/order_table.html',{"prd":data})



def admin_payment_table(request):
	data=payment_tb.objects.all()
	return render(request,'admin/payment_table.html',{"prd":data})



def ajaxview(request):
	uid=request.GET.get('uid')
	user=signup_tb.objects.filter(id=uid)
	for x in user:
		name=x.name
		email=x.email
	
	dat={"aa":name,"bb":email}
	print(dat)
	return JsonResponse(dat)	


from reportlab.pdfgen import canvas 
from django.views.generic import View
from pro5.utils import render_to_pdf


def downloadpdf(request):
	pid=request.GET['pid']		
	data=payment_tb.objects.filter(id=pid)
	pdf=render_to_pdf('admin/pdfdownload.html',{'data':data})
	return HttpResponse(pdf,content_type='application/pdf')