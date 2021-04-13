# Book_web_store
 Website bán sách
 
 ngôn ngữ: python, django, html, css, js, mysql
 
# Mô tả: là trang web mua, bán sách
Đối tượng khách hàng:
- Những người có nhu cầu mua sách
-	Chủ website quản lý và bán sách

Khách hàng:
- Tìm kiếm sách theo tên, thể loại, tác giả
-	Xem thông tin về sách
-	Đặt mua sách

Admin:
-	Quản lý, thêm, sửa, xóa sách

# Mô hình ER:
-	![image](https://user-images.githubusercontent.com/49164540/114424551-6f784800-9be2-11eb-9739-529d2b8a3c99.png)
# Thiết kế database:
![image](https://user-images.githubusercontent.com/49164540/114424853-b5cda700-9be2-11eb-9517-8923fd8c5f54.png)

#

Chạy chương trình:
1. Cần cài đặt python 3 và django
2. import database vào MYSQL, chỉnh sửa rootname và mật khẩu MYSQL trong file __pycache__/settings.py phần DATABASE cho phù hợp
3. gõ lệnh:
>python manage.py makemigrations
>
>python manage.py migrate
>
->để kết nối với database

4. gõ lệnh:
>python manage.py runserver 
>
->để chạy sever ảo 


