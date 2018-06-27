from django.urls import path

from . import views
from .views import SubjectListView, NewSubjectView, TeacherListView, NewTeacherView

urlpatterns = [
    path('', views.index, name='index'),
    path('subject', SubjectListView.as_view(), name='subject-list'),
    path('subject/new', NewSubjectView.as_view(), name='subject-new'),
    path('teacher', TeacherListView.as_view(), name='teacher-list'),
    path('teacher/<int:teacher_id>/detail', views.teacher_detail, name='teacher'),
    path('teacher/new', NewTeacherView.as_view(), name='teacher-new'), 
    path('group', views.group, name='group-list'),
    path('group/<int:group_id>/detail', views.group_detail, name='group'), 
    path('student', views.student_detail, name='student'),
]