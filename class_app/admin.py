from django.contrib import admin
from .models import Teacher, Student, Group, Parent, Subject, Journal

# Register your models here.
admin.site.register(Teacher)
admin.site.register(Student)
admin.site.register(Group)
admin.site.register(Parent)
admin.site.register(Subject)
admin.site.register(Journal)
