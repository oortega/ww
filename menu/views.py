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




def inicio(request):
    
    return render_to_response('index.html', {'titulo_seccion': "BestMenu"})
    