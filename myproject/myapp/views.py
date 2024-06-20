from django.shortcuts import render


def index(request):
    return render(request, "myapp/index.html")


def menu(request):
    return render(request, "myapp/menu.html")


def blog(request):
    return render(request, "myapp/blog.html")


def blogdetails(request):
    return render(request, "myapp/blogdetails.html")
