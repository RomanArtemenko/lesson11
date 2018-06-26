from django.db import models

# Create your models here.
class Base(models.Model):
    first_name = models.CharField(max_length=20)
    last_name = models.CharField(max_length=20)
    patronymic = models.CharField(max_length=20)
    birthday = models.DateField(auto_now=False)

    def __str__(self):
        return '%s %s %s' % (self.last_name, self.first_name, self.patronymic) 

    class Meta:
        abstract = True



class Teacher(Base):
    recipe_date = models.DateField()
    specialization = models.CharField(max_length=20)

    class Meta:
        verbose_name = 'Преподаватель'
        verbose_name_plural = 'Преподаватели'

class Group(models.Model):
    level = models.IntegerField()
    letter = models.CharField(max_length=1)
    team_leader = models.ForeignKey(Teacher, on_delete=models.PROTECT)

    def __str__(self):
        return '%s-%s' % (self.level, self.letter) 

    class Meta:
        unique_together = (('level', 'letter'),)
        verbose_name = 'Класс'
        verbose_name_plural = 'Классы'

class Student(Base):
    group_id = models.ForeignKey(Group, on_delete=models.PROTECT)

    class Meta:
        verbose_name = 'Ученик'
        verbose_name_plural = 'Ученики'

class Parent(Base):
    work_place = models.CharField(max_length=300)
    email = models.EmailField()
    student_id = models.ForeignKey(Student, on_delete=models.CASCADE)

    class Meta:
        verbose_name = 'Родитель'
        verbose_name_plural = 'Родители'

class Subject(models.Model):
    name = models.CharField(max_length=50)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Предмет'
        verbose_name_plural = 'Предметы'


class Journal(models.Model):
    ONE = 1
    TWO = 2 
    THREE = 3
    FOUR = 4 
    FIVE = 5 
    MISSING = 'Н'
    ACCESSIBLE_VALUE = (
        ('1', '1'),
        ('2', '2'),
        ('3', '3'),
        ('4', '4'),
        ('5', '5'),
        ('Н', 'Отсутствовал'),
    )

    student_id = models.ForeignKey(Student, on_delete=models.CASCADE)
    subject_id = models.ForeignKey(Subject, on_delete=models.CASCADE)
    date = models.DateField()
    score = models.CharField(
        max_length=1,
        choices=ACCESSIBLE_VALUE)

    class Meta:
        verbose_name = 'Журнал'
        verbose_name_plural = 'Журналы'
    


