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
    (r'^',include('ww.menu.urls')),
    (r'^media/(?P<path>.*)$', 'django.views.static.serve', {'document_root': settings.MEDIA_ROOT}),  
    # Uncomment the next line to enable the admin:
     url(r'^menu/', include(admin.site.urls)),
)
