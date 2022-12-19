from django.urls import path
from adminapp import views

urlpatterns = [

	# path('',views.index),
	# path('signin/',views.signin),
	# path('signup/',views.signup),


	path('index/',views.admin_index),
	path('',views.admin_login),
	path('logout/',views.admin_logout),
	path('forms/',views.admin_forms),
	path('register/',views.admin_register),
	path('basic_table/',views.admin_basic_table),
	path('basic_update/',views.admin_basic_update),
	path('basic_delete/',views.admin_basic_delete),
	path('form_component/',views.admin_form_component),
	path('order_table/',views.admin_order_table),
	path('ajaxview/',views.ajaxview),
	path('payment_table/',views.admin_payment_table),

	
	
	]
	