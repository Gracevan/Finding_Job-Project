from django.db import models

# Create your models here.
class Member(models.Model):
    username = models.CharField(max_length=20,null=False)
    password = models.CharField(max_length=10,null=False)
    useremail = models.EmailField(max_length=100,blank=True)
    userbirth = models.DateField(null=False)

class Meta:
    db_table = "member"


class MemberSkills(models.Model):
    skillname = models.CharField(max_length=100)
    member = models.ForeignKey(Member, on_delete=models.CASCADE)

class Meta:
    db_table = "skills"

