from django.urls import path
from . import views


urlpatterns = [
    path("", views.index, name="index"),
    path("menu/", views.menu, name="menu"),
    path("blog/", views.blog, name="blog"),
    path("blogdetails/", views.blogdetails, name="blogdetails"),
]
