from django.shortcuts import render
from django.http import HttpResponse
from django.http import HttpResponseRedirect
from home. models import Danh_muc, Sach, NhaXuatBan, NhaPhatHanh, Tag

# Create your views here.

def index(request):
    return render(request, 'body/trangchu.html')
def book_list(request):
    list_book = Sach.objects.all()
    list_Danhmuc = Danh_muc.objects.all()
    list_NPH = NhaPhatHanh.objects.all()
    list_NXB = NhaXuatBan.objects.all()
    return render(request, 'body/book_list.html', 
    {'list_book' : list_book, 
    'list_danh_muc' : list_Danhmuc,
    'list_NPH' : list_NPH,
    'list_NXB' : list_NXB})

def thanhtoan(request):
    return render(request, 'body/thanhtoan.html')
def my_account(request):
    return render(request, 'body/my_account.html')
def yeuthich(request):
    return render(request, 'body/yeuthich.html')
def login(request):
    return render(request, 'body/login.html')
def lienhe(request):
    return render(request, 'body/lienhe.html')
def book_danhmuc(request,id):
    list_book_danhmuc = Sach.objects.filter(id_danhmuc = id)
    list_Danhmuc = Danh_muc.objects.all()
    list_NXB = NhaXuatBan.objects.all()
    list_NPH = NhaPhatHanh.objects.all()
    return render(request, 'body/book_danhmuc.html', {'list_book_danhmuc' : list_book_danhmuc, 
    'list_danh_muc' : list_Danhmuc,
    'list_NXB' : list_NXB,
    'list_NPH' : list_NPH})

def book_detail(request,id):
    detail_book = Sach.objects.get(id_sach = id)
    list_book_danhmuc = Sach.objects.filter(id_danhmuc = detail_book.id_danhmuc)
    list_Danhmuc = Danh_muc.objects.all()
    list_NPH = NhaPhatHanh.objects.all()
    list_NXB = NhaXuatBan.objects.all()
    nNXB = NhaXuatBan.objects.get(id_NXB = detail_book.id_NXB).Ten_NXB
    nNPH = NhaPhatHanh.objects.get(id_NPH = detail_book.id_NPH).Ten_NPH
    return render(request, 'body/book_detail.html', {'detail_book' : detail_book,
    'list_book_danhmuc' : list_book_danhmuc, 
    'list_danh_muc' : list_Danhmuc,
    'list_NXB' : list_NXB,
    'list_NPH' : list_NPH,
    'nNXB' : nNXB,
    'nNPH' : nNPH})

Gio_hang = {}
gia_tien = 0
Item_gio_hang ={}
def ThemVaoGioHang(request):
    if request.is_ajax():
        id_s = request.POST.get('id')
        sl = request.POST.get('sl')

        book_detail = Sach.objects.get(id_sach = id_s)
        if book_detail.gia_tien_sale == -1:
            gia_tien = book_detail.gia_tien_goc
        else:
            gia_tien = book_detail.gia_tien_sale

        if id_s in Gio_hang:
            Item_gio_hang = {
                'name' : book_detail.Ten_sach,
                'gia_tien' : gia_tien,
                'img' : str(book_detail.img_sach),
                'sl' : int(Gio_hang[id_s]['sl']) + int(sl),
                'tong' : gia_tien * (int(Gio_hang[id_s]['sl']) + int(sl)),
            }
        else:
            Item_gio_hang = {
                'name' : book_detail.Ten_sach,
                'gia_tien' : gia_tien,
                'img' : str(book_detail.img_sach),
                'sl' : sl,
                'tong' : gia_tien * int(sl),
            }
        Gio_hang[id_s] = Item_gio_hang
        request.session['Gio_hang'] = Gio_hang
        Info_gio_hang = request.session['Gio_hang']

        html = str('body/themvaogiohang.html')
        x = str(Gio_hang)
    return HttpResponse(x)

def danhsachgiohang(request):
    costSp = float(0)
    costShip = float(5000)
    total = float(0)
    Gio_hang = request.session['Gio_hang']
    for d,itemS in Gio_hang.items():
        costSp += itemS['tong']
        costShip += 5000
    total = costSp + costShip
    return render(request, 'body/giohang.html', 
    {'costSp' : costSp, 
    'costShip' : costShip,
    'total' : total})

def moinhat(request):
    list_book = Sach.objects.all()
    list_Danhmuc = Danh_muc.objects.all()
    list_NXB = NhaXuatBan.objects.all()
    list_NPH = NhaPhatHanh.objects.all()
    return render(request, 'body/moinhat.html', 
    {'list_book' : list_book, 
    'list_danh_muc' : list_Danhmuc,
    'list_NXB' : list_NXB,
    'list_NPH' : list_NPH})
def banchaynhat(request):
    list_book = Sach.objects.all()
    list_Danhmuc = Danh_muc.objects.all()
    list_NXB = NhaXuatBan.objects.all()
    list_NPH = NhaPhatHanh.objects.all()
    return render(request, 'body/banchaynhat.html', 
    {'list_book' : list_book, 
    'list_danh_muc' : list_Danhmuc,
    'list_NXB' : list_NXB,
    'list_NPH' : list_NPH})