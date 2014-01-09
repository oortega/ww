#!/ 
# -*- coding: utf-8 -*-
from django.conf.urls.defaults import *
from ww.menu import views as menu_views
from django.contrib import admin
from django.contrib.auth.views import login, logout
from django.views.generic.simple import direct_to_template
from djangoratings.views import AddRatingFromModel
from django.core.urlresolvers import reverse
from ww import settings
 
urlpatterns = patterns('', 
	(r'^$',menu_views.inicio),
	
	
)



 