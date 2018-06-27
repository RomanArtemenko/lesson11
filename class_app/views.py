from django.shortcuts import render, redirect, reverse, get_object_or_404
from django.urls import reverse_lazy
from django.http import HttpResponse
from django.views.generic import ListView
from django.views.generic.base import View, TemplateView
from django.views.generic.edit import CreateView
from .models import Subject, Group, Parent, Student, Teacher, Journal
from .forms import SubjectForm, TeacherForm


# Create your views here.
def index(request):
    return render(request, 'class_app/index.html')
    # return  HttpResponse('Index page')

class SubjectListView(ListView):
    model = Subject
    template_name = 'class_app/subject.html'

class NewSubjectView(CreateView):
    form_class = SubjectForm
    template_name = 'class_app/new_subject.html' 
    success_url = reverse_lazy('subject-list')

class TeacherListView(ListView):
    model = Teacher
    template_name = 'class_app/teacher.html'

class NewTeacherView(CreateView):
    form_class = TeacherForm
    template_name = 'class_app/new_teacher.html' 
    success_url = reverse_lazy('teacher-list')    

def teacher_detail(request, teacher_id):
    return HttpResponse('Teacher with id : %s ' % teacher_id)

def group(request):
    return HttpResponse("Group's list")

def group_detail(request, group_id):
    return HttpResponse("Student's list")

def student_detail(request, student_id):
    return HttpResponse('Student with id : %s' % student_id)
