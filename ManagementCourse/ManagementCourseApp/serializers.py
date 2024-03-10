from ManagementCourseApp.models import Category,Course,Tag,Lesson,User, Comment,Like
from rest_framework import serializers

class CategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Category
        fields = '__all__'


class TagSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tag
        fields = ['id' , 'name']


class BaseSerializer(serializers.ModelSerializer):
    image = serializers.SerializerMethodField(source='image')
    tags = TagSerializer(many=True)

    def get_image(self, course):
        if course.image:
            request = self.context.get('request')
            if request:
                return request.build_absolute_uri('/static/%s' % course.image.name)
            return '/static/%s' % course.image.name


class CourseSerializer(BaseSerializer):
    class Meta:
        model = Course
        fields = '__all__'


class LessonSerializer(BaseSerializer):
    class Meta:
        model = Lesson
        fields = ['id', 'subject', 'image', 'tags', 'content', 'create_date', 'update_date']


class LessonDetailSerializer(BaseSerializer):
    liked = serializers.SerializerMethodField()

    def get_liked(self,lesson):
        request = self.context.get('request')
        if request.user.is_authenticated: #ktra đang nhập
            return lesson.like_set.filter(active = True).exists() #ktra like có tồn tại không

    class Meta:
        model = LessonSerializer.Meta.model
        fields = LessonSerializer.Meta.fields + ['liked']


class UserSerializer(serializers.ModelSerializer):
#đăng ký
    class Meta:
        model = User
        fields = ['username','password','first_name', 'last_name', 'email','avatar']
        extra_kwargs ={
            'password':{
                'write_only':True
            }
        }
# ghi đè phương thức create
    def create(self, validated_data):
        data=validated_data.copy()

        user = User(**data)
        user.set_password(data['password'])
        user.save()

        return user


class CommentSerializer(serializers.ModelSerializer):
    user = UserSerializer()

    class Meta:
        model = Comment
        fields = ['id', 'content', 'user']
