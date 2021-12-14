from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.listing, name="assignment-listing"),
    url(r'^list/(?P<id>\w{0,50})/$', views.lists, name="assignment-lists"),
    url(r'^add$', views.add, name="add"),
    url(r'^delete/(?P<id>\w{0,50})/$', views.delete, name="delete"),
    url(r'^update/(?P<assignmentId>\w{0,50})/$', views.update, name="update"),
]
