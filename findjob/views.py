from django.shortcuts import render
from django.http import HttpResponse
from django.core.files.storage import FileSystemStorage

def index(request):
    title = 'find my job'
    return render(request,'findjob/index.html',locals())

def searching(request):
    title = 'results'
    return render(request,'findjob/searching.html',locals())

# Create your views here.
