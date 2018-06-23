from django.db import models

# Create your models here.
class Base(models.Model):
    first_name = models.CharField(max_length=20)
    last_name = models.CharField(max_length=20)
    patronymic = models.CharField(max_length=20)
    birthday = models.DateField

    class Meta:
        abstract = True

class Teacher(Base):
    recipe_date = models.DateField()

class Group(models.Model):
    level = models.IntegerField()
    num = models.CharField(max_length=1)
    teacher = models.ForeignKey(Teacher, on_delete=models.PROTECT)

class Student(Base):
    group_id = models.ForeignKey(Group, on_delete=models.PROTECT)

class Parent(Base):
    work_place = models.CharField(max_length=300)
    email = models.EmailField()
    student_id = models.ForeignKey(Student, on_delete=models.CASCADE)


