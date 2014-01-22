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
from datetime import date
from ww.menu.models import Menu,Complemento,Comida,Bebida

dia_semana={
	1:"Lunes",
	2:"Martes",
	3:"Miercoles",
	4:"Jueves",
	5:"Viernes",
	6:"Sabado",
	7:"Domingo"
}

def inicio(request):
	dia=date.today().isoweekday()
	menu=Menu.objects.filter(dia=dia)
	#complementos=Menu.objects.filter(dia=dia).complemento.all()
	dia=dia_semana[dia]
	
	
	#Categorias=Pelicula.objects.get(titulo=titulop).categorias.all() "complementos":complementos

	return render_to_response('index.html',{'menu': menu,'dia':dia},RequestContext(request))
