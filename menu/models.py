#!/ 
# -*- coding: utf-8 -*-
from django.db import models
from djangoratings.fields import AnonymousRatingField
from django.forms.models import ModelForm  
from django.forms.widgets import CheckboxSelectMultiple  
from datetime import datetime
DIA_SEMANA= (
    (1, 'Lunes'),
	(2, 'Martes'),
	(3, 'Miercoles'),
	(4, 'Jueves'),
	(5, 'Viernes'),
	(6, 'Sabado'),
	(7, 'Domingo'),
	
 )
class Comida(models.Model):
	nombre=models.CharField("Nombre de la Comida",max_length=100,unique=True)
	descripcion=models.CharField(max_length=450)
	foto=models.ImageField(upload_to = 'images/comidas')
	def __str__(self):
		return self.nombre

class Bebida(models.Model):
	nombre=models.CharField("Nombre de la Bebida",max_length=60,unique=True)
	descripcion=models.CharField(max_length=100,blank=True)
	def __str__(self):
		return self.nombre
class Sopa(models.Model):
	nombre=models.CharField("Nombre de la Sopa",max_length=60,unique=True)
	descripcion=models.CharField(max_length=200,blank=True)
	def __str__(self):
		return self.nombre

class Complemento(models.Model):
	nombre=models.CharField("Nombre del Complemento",max_length=60,unique=True)
	descripcion=models.CharField(max_length=200,blank=True)
	def __str__(self):
		return self.nombre
  


class Menu(models.Model):
	dia=models.IntegerField(choices=DIA_SEMANA,max_length=1,verbose_name="Dia") 
	
	comidas=models.ForeignKey(Comida, verbose_name="Selecciona un Platillo")
	complemento=models.ManyToManyField(Complemento, verbose_name="Selecciona los Complementos")
	sopa=models.ManyToManyField(Sopa, verbose_name="Selecciona las sopas")
	bebida=models.ManyToManyField(Bebida, verbose_name="Selecciona las Bebidas")
	#fecha=models.DateTimeField(auto_now=False, blank=True)
	fecha=models.DateField(auto_now=False, blank=True)
	
	calificacion=AnonymousRatingField(range=5, can_change_vote=True)
	def __str__(self):
		return u'%s %s' % (self.comidas, self.dia)



