from django.db import models

# Create your models here.

book_statusChoice = ((0, 'Ban chay'), (1, 'Het hang'), (2, 'Con hang'), (3, 'Sale off'))

class Danh_muc(models.Model):
    id_danhmuc = models.AutoField(primary_key= 'true')
    Ten_danhmuc = models.CharField(max_length = 50, null = False)
    ngay_tao = models.DateField()
    class Meta:
        db_table = 'Danh_muc'

class NhaXuatBan(models.Model):
    id_NXB = models.AutoField(primary_key='true')
    Ten_NXB = models.CharField(max_length=255, null = False)
    class Meta:
        db_table = 'NhaXuatBan'

class NhaPhatHanh(models.Model):
    id_NPH = models.AutoField(primary_key= 'true')
    Ten_NPH = models.CharField(max_length=255, null = False)
    class Meta:
        db_table = 'NhaPhatHanh'

class Tac_gia(models.Model):
    id_tacgia = models.AutoField(primary_key='true')
    Ten_tacgia = models.CharField(max_length=255, null = False)
    class Meta:
        db_table = 'Tac_gia'

class Sach(models.Model): 

    listDanhmuc = Danh_muc.objects.all()
    res_danhmuc = []
    for d in listDanhmuc:
        res_danhmuc.append((d.id_danhmuc, d.Ten_danhmuc))

    listNXB = NhaXuatBan.objects.all()
    res_NXB = []
    for d in listNXB:
        res_NXB.append((d.id_NXB, d.Ten_NXB))

    listNPH = NhaPhatHanh.objects.all()
    res_NPH = []
    for d in listNPH:
        res_NPH.append((d.id_NPH, d.Ten_NPH))

    id_sach = models.AutoField(primary_key= 'true')
    Ten_sach = models.CharField(max_length= 200, null = False)
    Ten_tac_gia = models.CharField(max_length= 100, null = False, default='a')
    id_danhmuc = models.IntegerField(null = False, choices = res_danhmuc)
    id_NXB = models.IntegerField(null = False, choices = res_NXB)
    id_NPH = models.IntegerField(null = False, choices = res_NPH)
    img_sach = models.ImageField(max_length=500, null = False)
    gia_tien_goc = models.FloatField(null = False)
    gia_tien_sale = models.FloatField()
    so_luong = models.IntegerField()
    mo_ta = models.TextField()
    status = models.SmallIntegerField(choices = book_statusChoice)
    ngay_tao = models.DateField()
    class Meta:
        db_table = 'Sach'

class Tag(models.Model):
    id_tag = models.AutoField(primary_key= 'true')
    Ten_tag = models.CharField(max_length=50, null = 'False')
    class Meta:
        db_table = 'Tag'

class Book_Tag(models.Model):
    listSach = Sach.objects.all()
    res_sach = []
    for d in listSach:
        res_sach.append((d.id_sach, d.Ten_sach))

    listTag = Tag.objects.all()
    res_tag = []
    for d in listTag:
        res_tag.append((d.id_tag, d.Ten_tag))

    id_bat = models.AutoField(primary_key='true')
    id_sach = models.IntegerField(null = False, choices = res_sach)
    id_tag = models.IntegerField(null = False, choices = res_tag)
