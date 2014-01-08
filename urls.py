from django.conf.urls.defaults import *
from django.contrib import admin
from djangoratings.views import AddRatingFromModel
from ww import settings
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'ww.views.home', name='home'),
    # url(r'^ww/', include('ww.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
     url(r'^menu/', include(admin.site.urls)),
)
