from django.urls import path
from app5 import views

urlpatterns = [

	path('',views.index),
	path('signin/',views.signin),
	path('signup/',views.signup),
	path('logout/',views.logout),
	path('about/',views.about),
	path('contact/',views.contact),
	path('personalcare/',views.personalcare),
	path('household/',views.household),
	path('packagedfoods/',views.packagedfoods),
	path('groceries/',views.groceries),
	path('beverages/',views.beverages),
	path('products/',views.products),
	path('faq/',views.faq),
	path('short_codes/',views.short_codes),
	path('offers/',views.offers),
	path('cart/',views.cart),
	path('removecart/',views.removecart),
	path('updatecart/',views.updatecart),
	path('addtocart/',views.addtocart),
	path('payment/',views.payment),
	path('single/',views.single),
	


	]
	