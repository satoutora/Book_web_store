"""book_web URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from home import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.index, name = 'Trang chu'),
    path('body/book_list', views.book_list, name = 'Sach'),
    path('body/thanhtoan', views.thanhtoan, name = 'Thanh toan'),
    path('body/my_account', views.my_account, name = 'My account'),

    path('body/yeuthich', views.yeuthich, name = 'Yeu thich'),
    path('body/login', views.login, name = 'Login'),
    path('body/lienhe', views.lienhe, name = 'Lien he'),
    path('body/book_danhmuc/<int:id>', views.book_danhmuc, name = 'Danh muc san pham'),
    path('body/book_detail/<int:id>', views.book_detail, name = 'Chi tiet san pham'),
    path('body/moinhat', views.moinhat, name = 'Sach moi'),
    path('body/banchaynhat', views.banchaynhat, name = 'Ban chay nhat'),

    path('body/themvaogiohang', views.ThemVaoGioHang, name = 'Them vao gio hang'),
    path('body/giohang', views.danhsachgiohang, name = 'Danh sach gio hang'),
]
