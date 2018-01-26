from django.shortcuts import render,redirect
from django.http import HttpResponse
import datetime
from .models import Company,CompanySkills
from django.contrib.staticfiles import finders

def index(request):
    title = '公司管理'

    # todo 讀取會員資料傳給index.html
    companies = Company.objects.all()  # 此傳進來是list or set，用memb.id/ memb.username等db裡面的col名稱接
    # print(type(member)) //queryset
    return render(request,'company/index.html',locals())

def create(request):
    if request.method == 'POST':
        companyname = request.POST["companyname"]
        position = request.POST["position"]
        companyemail = request.POST["companyemail"]
        content = request.POST["content"]
        

        skills = request.POST.getlist("skills") #取得skill check box的list ['python','mysql']


        #todo 接收到的會員資料寫進資料庫，並放在company變數裡
        company = Company.objects.create(companyname = companyname,content = content, companyemail = companyemail, position = position)
        for skill in skills:
            CompanySkills.objects.create(company=company, companyskill=skill)
    
        #todo 新增完後轉到http://localhost:8000/company
        return redirect('/company')

    title = '公司新增'
    return render(request,'company/create.html',locals())

def update(request,id):
    if request.method == 'POST':
        companyname = request.POST["companyname"]
        companyemail = request.POST["companyemail"]
        position = request.POST["position"]
        
        skills = request.POST.getlist("skills") #取得skill check box的list ['python','mysql']

        #todo 修改資料庫中的會員資料
        company = Company.objects.get(id=int(id))
        company.companyname = companyname
        company.companyemail = companyemail
        company.position = position
        company.save()

        #修改companyskill中欄位的資料   
        # skills.companyskill = companyskill
        # skills.save()

        #todo 修改完成後轉到http://localhost:8000/company
        return redirect("/company")

    title = '公司修改'
    #todo 根據會員編號取得會員資料傳給update.html
    company = Company.objects.get(id=int(id))
    return render(request,'company/update.html',locals())


def delete(request,id):
    #todo 根據會員編號刪除會員資料
    company = Company.objects.get(id=int(id))
    company.delete()

    #todo 刪除完成後轉到http://localhost:8000/company
    return redirect('/company')