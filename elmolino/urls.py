from django.conf.urls import patterns, include, url
from django.contrib import admin
from web.views import *

urlpatterns = patterns('',
                       # Examples:
                           # url(r'^$', 'elmolino.views.home', name='home'),
                       # url(r'^blog/', include('blog.urls')),
                       
                       url(r'^admin/', include(admin.site.urls)),
                       url(r'^$', home),
                       url(r'^vivero', vivero),
                       
)
