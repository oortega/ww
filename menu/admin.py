# -*- coding: utf-8 -*-
from django.contrib import admin
from ww.menu import models
from ww.menu.form import MenuForm

class MenuAdmin(admin.ModelAdmin):
	form=MenuForm
	class Media:
		css = {
			"all": ("/media/css/admin-django.css",)
		}

admin.site.register(models.Comida)
admin.site.register(models.Bebida)
admin.site.register(models.Sopa)
admin.site.register(models.Complemento)
admin.site.register(models.Menu,MenuAdmin)
	

