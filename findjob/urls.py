from django.urls import path
from . import views

app_home='findjob'
urlpatterns = [
    path("", views.index, name='index'),
    path("searching/", views.searching, name='searching'),
]