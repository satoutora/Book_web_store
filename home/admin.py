from django.contrib import admin
from .models import Danh_muc, Sach, Tag, NhaXuatBan, NhaPhatHanh, Book_Tag
# Register your models here.

admin.site.register(Danh_muc)

admin.site.register(Sach)

admin.site.register(Tag)

admin.site.register(NhaXuatBan)

admin.site.register(NhaPhatHanh)

admin.site.register(Book_Tag)
