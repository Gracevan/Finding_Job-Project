from django.shortcuts import render
from django.http import HttpResponse
import datetime
from .models import Member
from django.contrib.staticfiles import finders

def index(request):
    title = '會員管理'

    # todo 讀取會員資料傳給index.html
    member = Member.objects.all()
    return render(request,'member/index.html',locals())

def create(request):
    if request.method == 'POST':
        username = request.POST["username"]
        password = request.POST["password"]
        useremail = request.POST["useremail"]
        userbirth = request.POSt["userbirth"]

        #todo 接收到的會員資料寫進資料庫
        Member.objects.create(username = username, password = password, useremail = useremail, userbirth = userbirth)
    
        #todo 新增完後轉到http://localhost:8000/member
        return redirect('/member')

    title = '會員新增'
    return render(request,'member/create.html',locals())

def update(request,id):
    if request.method == 'POST':
        username = request.POST["username"]
        useremail = request.POST["useremail"]
        userbirth = request.POSt["userbirth"]

        #todo 修改資料庫中的會員資料
        member = Member.obect.get(id=int(id))
        member.username = membername
        member.useremail = useremail
        member.userbirth = userbirth
        member.save()

        #todo 修改完成後轉到http://localhost:8000/member
        return redirect("/member")

    title = '會員修改'
    #todo 根據會員編號取得會員資料傳給update.html
    member = Member.objects.get(id=int(id))
    return render(request,'member/update.html',locals())


def delete(request,id):
    #todo 根據會員編號刪除會員資料
    member = Member.objects.get(id=int(id))
    member.delete()

    #todo 刪除完成後轉到http://localhost:8000/member
    return redirect('/member')

def login(request):
    if request.method == "POST":
        email = request.POST['useremail']
        pwd = request.POST['userpassword']
        member = Member.objects.filter(useremail=email, password=pwd).values('username')

        if member:
            themember = member[0]
            response = HttpResponse("<script>alert('welcome');location.href='/member/'</script>")
            if 'rememberme' in request.POST.key() and request.POST['rememberme']:
                expiresdate = datetime.datetime.now() + datetime.timedelta(day=7)
                response.set_cookie("name",themember['username'],expires=expiresdate)
            else:
                response.set_cookie("name",themember['username'])
            return response
        else:
            return HttpResponse("<script>alert('登入失敗，密碼錯誤');location.href = 'member/login'</script>")

    title = '會員登入'
    return render(request,'member/login.html',locals())

def logout(request):
    response = HttpResponse("<script>alert('登出');location.href = 'member/login'</script>")
    response.delete_cookie('name')
    return response





