#!
# -*- coding: utf-8 -*-
from django.contrib.auth.models import User
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render_to_response
from django.template import RequestContext
from django.core.exceptions import ObjectDoesNotExist #Cuando no exista el objeto
from django.contrib import auth
from django.contrib.messages.api import get_messages
from decimal import *
from django.shortcuts import redirect
from datetime import datetime
from ww.menu.models import Menu,Complemento,Comida,Bebida


def inicio(request):
	
	menus=Menu.objects.get(fecha="2014-01-11")
	complementos=Menu.objects.get(fecha="2014-01-11").complemento.all()
	 
	#Categorias=Pelicula.objects.get(titulo=titulop).categorias.all()

	return render_to_response('index.html',{'menus': menus,'dia':'lunes',"complementos":complementos},RequestContext(request))
