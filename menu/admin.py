# -*- coding: utf-8 -*-
from django.contrib import admin
from ww.menu import models
from ww.menu.form import MenuForm,ComplementoForm,SopaForm,BebidaForm,ComidaForm

class ComidaAdmin(admin.ModelAdmin):
	form=ComidaForm
class ComplementoAdmin(admin.ModelAdmin):
	form=ComplementoForm
class SopaAdmin(admin.ModelAdmin):
	form=SopaForm
class BebidaAdmin(admin.ModelAdmin):
	form=BebidaForm

class MenuAdmin(admin.ModelAdmin):
	form=MenuForm
	class Media:
		css = {
			"all": ("/media/css/admin-django.css",)
		}

admin.site.register(models.Comida,ComidaAdmin)
admin.site.register(models.Bebida,BebidaAdmin)
admin.site.register(models.Sopa,SopaAdmin)
admin.site.register(models.Complemento,ComplementoAdmin)
admin.site.register(models.Menu,MenuAdmin)
	

