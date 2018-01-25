from django.db import models

# Create your models here.
class Company(models.Model):
    companyname = models.CharField(max_length=20,null=False)
    content = models.CharField(max_length=100,null=False)
    companyemail = models.EmailField(max_length=100,blank=True)
    position = models.CharField(max_length=100,null=False)

class Meta:
    db_table = "company"


class CompanySkills(models.Model):
    companyskill = models.CharField(max_length=100)
    company = models.ForeignKey(Company, on_delete=models.CASCADE)

class Meta:
    db_table = "skills"

