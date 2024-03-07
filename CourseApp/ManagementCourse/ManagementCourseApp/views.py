from threading import activeCount

from rest_framework import viewsets, generics, status,parsers,permissions
from rest_framework.decorators import action
from rest_framework.response import Response
from ManagementCourseApp.models import Category,Course,Lesson,User,Comment
from ManagementCourseApp import serializers, paginators,perms

# Create your views here.


class CategoryViewSet(viewsets.ViewSet, generics.ListAPIView):
    queryset = Category.objects.all()
    serializer_class = serializers.CategorySerializer


class CourseViewSet(viewsets.ViewSet, generics.ListAPIView):
    queryset = Course.objects.filter(active=True).all() #lấy khóa học active
    serializer_class = serializers.CourseSerializer
    pagination_class = paginators.CoursePaginnator

    def get_queryset(self):
        queries = self.queryset

        q = self.request.query_params.get("q")
        if q:
            queries = queries.filter(subject__icontains=q)

        return queries

    @action(methods=['get'], detail=True) #detail=True => truyền id
    def lessons(self, request, pk):
        lessons = self.get_object().lesson_set.filter(active=True).all()

        return Response(serializers.LessonSerializer(lessons, many=True, context={'request':request}).data,
                        status=status.HTTP_200_OK)


# RetrieveAPIView: lấy chi tiết thông tin =>get
# lấy danh sách lesson
class LessonViewSet(viewsets.ViewSet, generics.ListAPIView):
    queryset = Lesson.objects.filter(active=True).all()
    serializer_class = serializers.LessonSerializer
    permission_classes = [permissions.AllowAny]

    def get_permissions(self):
        if self.action in ['add_comment']:
            return [permissions.IsAuthenticated()] #đối tượng nên có dâu ngoặc tròn
        return [self.permission_classes]

#     thêm comment
    @action(methods=['post'], url_path='comments', detail=True)
    def add_comment(self,request,pk):
        #dữ liệu server gửi lên lưu trong request.data
        # request.user => lưu thông tin chứng thực
        # get_object => đối tượng hiện tại
        c = Comment.objects.create(user=request.user, lesson = self.get_object(),content = request.data.get('content'))
        return Response(serializers.CommentSerializer(c).data,status=status.HTTP_201_CREATED)


# DestroyAPIView => xóa
class CommentViewSet(viewsets.ViewSet, generics.DestroyAPIView):
    queryset = Comment.objects.all()
    serializer_class = serializers.CommentSerializer
    permission_classes = [perms.OwnerAuthenticated]


# CreateAPIView: update và thêm ==> post
class UserViewSet(viewsets.ViewSet, generics.CreateAPIView):
    queryset = User.objects.filter(is_active=True).all()
    serializer_class = serializers.UserSerializer
    parser_classes = [parsers.MultiPartParser]

    # chứng thực
    def get_permissions(self):
        if(self.action.__eq__('current_user')):
                return [permissions.IsAuthenticated()]

        return [permissions.AllowAny()]

    # lấy user theo current => chứng thực từ token
    @action(methods=['get'], url_name='current-user',detail=False)
    def current_user (self,request):
        request.user
        return Response(serializers.UserSerializer(request.user).data)
