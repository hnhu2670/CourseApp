from django.contrib import admin
from .models import Category,Course,Lesson,Tag
from django.utils.html import mark_safe
from django import forms
from ckeditor_uploader.widgets import CKEditorUploadingWidget

# kế thừa ModelAdmin


class CategoryAdmin(admin.ModelAdmin):
    # ghi đè lại thuộc tính
    list_display = ['pk', 'name']
    search_fields =['name']


class CourseForm(forms.ModelForm):
    description = forms.CharField(widget=CKEditorUploadingWidget)

    class Meta:
        model = Course
        fields = '__all__'


class TagInlineAdmin(admin.StackedInline):
    model = Course.tags.through     # many - to -many =>through là lớp trung gian


class CoursesAdmin(admin.ModelAdmin):
    # ghi đè lại thuộc tính
    list_display = ['pk', 'subject']
    search_fields =['subject']
    readonly_fields = ['img'] #hiển thị ảnh => avatar là tên tự đặt
    form = CourseForm
    inlines = [TagInlineAdmin]
    def img(self,course):
        if course:
            return mark_safe(
                '<img src="/static/{url}" width="120" />'\
                    .format(url=course.image.name)
            )


class LessonAdmin(admin.ModelAdmin):
    # ghi đè lại thuộc tính
    list_display = ['pk', 'subject']
    search_fields =['subject']

# Register your models here.


admin.site.register(Category, CategoryAdmin)
admin.site.register(Course,CoursesAdmin)
admin.site.register(Lesson,LessonAdmin)
admin.site.register(Tag)

