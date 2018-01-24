from django.shortcuts import render,redirect
from django.http import HttpResponse
import datetime
from .models import Member,MemberSkills
from django.contrib.staticfiles import finders

def index(request):
    title = '會員管理'

    # todo 讀取會員資料傳給index.html
    member = Member.objects.all()  # 此傳進來是list or set，用memb.id/ memb.username等db裡面的col名稱接
    # print(type(member)) //queryset
    return render(request,'member/index.html',locals())

def create(request):
    if request.method == 'POST':
        username = request.POST["username"]
        password = request.POST["password"]
        useremail = request.POST["useremail"]
        userbirth = request.POST["userbirth"]

        skills = request.POST.getlist("skills") #取得skill check box的list ['python','mysql']


        #todo 接收到的會員資料寫進資料庫，並放在member變數裡
        member = Member.objects.create(username = username, password = password, useremail = useremail, userbirth = userbirth)

        for skill in skills:
            MemberSkills.objects.create(member=member, skillname=skill)
    
        #todo 新增完後轉到http://localhost:8000/member
        return redirect('/member')

    title = '會員新增'
    return render(request,'member/create.html',locals())

def update(request,id):
    if request.method == 'POST':
        username = request.POST["username"]
        useremail = request.POST["useremail"]
        userbirth = request.POSt["userbirth"]

        skills=request.POST.getlist("skills") #取得skill check box的list ['python','mysql']

        #todo 修改資料庫中的會員資料
        member = Member.objects.get(id=int(id))
        member.username = membername
        member.useremail = useremail
        member.userbirth = userbirth
        member.save()

        # skills = MemberSkills.objects.get(id=int(id))
        # for skill in skills.memberskills_set.all():
        #     if skill.member != objects.member:
        #         skill.member = objects.member
        #         skill.save()

        #todo 修改完成後轉到http://localhost:8000/member
        return redirect("/member")

    title = '會員修改'
    #todo 根據會員編號取得會員資料傳給update.html
    member = Member.objects.get(id=int(id))
    # skills = MemberSkills.objects.get(id=int(id))
    # memeberlist = memberskills_set.all(id=int(id))
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





