 # -*- coding: utf-8 -*- 
from django import forms 
from django.contrib.admin.widgets import FilteredSelectMultiple
from ww.menu.models import  Menu,Complemento,Sopa,Bebida,Comida
import hashlib
EXPRE = r'^[A-Za-z \d():-]+$'


#Validacion entrada de caracteres especiales
class ComidaForm(forms.ModelForm):
	class Meta:
		model = Comida
	def __init__(self, *args, **kwargs):  
		super(ComidaForm, self).__init__(*args, **kwargs)
		titulo_field = self.fields['nombre']
		self.fields['nombre'] = forms.RegexField(EXPRE, label=titulo_field.label, max_length=titulo_field.max_length)
		
class ComplementoForm(forms.ModelForm):
	class Meta:
		model = Complemento
	def __init__(self, *args, **kwargs):  
		super(ComplementoForm, self).__init__(*args, **kwargs)
		titulo_field = self.fields['nombre']
		self.fields['nombre'] = forms.RegexField(EXPRE, label=titulo_field.label, max_length=titulo_field.max_length)
class SopaForm(forms.ModelForm):
	class Meta:
		model = Sopa
	def __init__(self, *args, **kwargs):  
		super(SopaForm, self).__init__(*args, **kwargs)
		titulo_field = self.fields['nombre']
		self.fields['nombre'] = forms.RegexField(EXPRE, label=titulo_field.label, max_length=titulo_field.max_length)

class BebidaForm(forms.ModelForm):
	class Meta:
		model = Bebida
	def __init__(self, *args, **kwargs):  
		super(BebidaForm, self).__init__(*args, **kwargs)
		titulo_field = self.fields['nombre']
		self.fields['nombre'] = forms.RegexField(EXPRE, label=titulo_field.label, max_length=titulo_field.max_length)

#Se cambia el select multiple por checkbox en el admin
class MenuForm(forms.ModelForm):
	complemento = forms.ModelMultipleChoiceField(widget=forms.CheckboxSelectMultiple(),queryset=Complemento.objects.all(), label='Selecciona los Complementos')
	sopa = forms.ModelMultipleChoiceField(widget=forms.CheckboxSelectMultiple(),queryset=Sopa.objects.all(), label='Selecciona las Sopas')
	bebida = forms.ModelMultipleChoiceField(widget=forms.CheckboxSelectMultiple(),queryset=Bebida.objects.all(), label='Selecciona las Bebidas')
	class Meta:
		model = Menu


