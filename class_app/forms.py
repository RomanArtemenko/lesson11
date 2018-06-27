from django import forms
from .models import Subject, Teacher

class SubjectForm(forms.ModelForm):
    class Meta:
        model = Subject
        fields = ('name',)

class TeacherForm(forms.ModelForm):
    class Meta:
        model = Teacher
        fields = '__all__'
