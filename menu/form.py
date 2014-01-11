 # -*- coding: utf-8 -*- 
from django import forms 
from django.contrib.admin.widgets import FilteredSelectMultiple
from ww.menu.models import  Menu,Complemento,Sopa,Bebida

class MenuForm(forms.ModelForm):
	complemento = forms.ModelMultipleChoiceField(widget=forms.CheckboxSelectMultiple(),queryset=Complemento.objects.all(), label='Selecciona los Complementos')
	sopa = forms.ModelMultipleChoiceField(widget=forms.CheckboxSelectMultiple(),queryset=Sopa.objects.all(), label='Selecciona las Sopas')
	bebida = forms.ModelMultipleChoiceField(widget=forms.CheckboxSelectMultiple(),queryset=Bebida.objects.all(), label='Selecciona las Bebidas')
	class Meta:
		model = Menu