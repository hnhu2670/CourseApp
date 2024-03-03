from ckeditor.fields import RichTextField
from django.db import models
from django.contrib.auth.models import AbstractUser
# Create your models here.

class User(AbstractUser):
    pass

# tạo lớp kế thừa


class BaseModel (models.Model):
    create_date = models.DateField(auto_now_add=True,null=True) #auto_now_add: lấy ngày khi tạo
    update_date = models.DateField(auto_now=True,null=True) #auto_now: lấy ngày khi có sự thay đổi
    active = models.BooleanField(default=True,null=True)

    # tạo lớp trừu tượng
    class Meta:
        abstract = True


class Category(BaseModel):
    name = models.CharField(max_length=50, null=False)

    def __str__(self):
        return self.name


class Course (BaseModel):
    subject = models.CharField(max_length=255, null=False)
    description = RichTextField()
    image = models.ImageField(upload_to='courses/%Y/%m/',null=True, blank=True)

    # thiết lập khóa ngoại => khóa học thuộc danh mục
    category = models.ForeignKey(Category, on_delete=models.RESTRICT)
    tags= models.ManyToManyField('Tag')

    def __str__(self):
        return self.subject

    class Meta:
        unique_together =('subject','category') #trang danh mục thì tên khóa học không được trùng


class Lesson(BaseModel):
    subject = models.CharField(max_length=255, null=False)
    content = RichTextField()
    image = models.ImageField(upload_to='lessons/%Y/%m/',null=True, blank=True)

    # bài học thuộc khóa học nào
    course = models.ForeignKey(Course,on_delete=models.CASCADE)


    #một bài học có nhiều tags
    tags= models.ManyToManyField('Tag')
    class Meta:
        unique_together =('subject','course') #trong khóa học thì tên bài học không được trùng


class Tag(BaseModel):
    name= models.CharField(max_length=50,unique=True)

    def __str__(self):
        return self.name
