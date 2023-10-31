create database Lms
use Lms
create table users
(
	id_user int not null IDENTITY(1,1) primary key,
	username varchar(150) not null,
	pass varchar(150) not null,
	mod bit  not null,
	ngaysinh datetime not null,
	gioitinh varchar(250) not null,
	diachi varchar(250) not null,
	sdt int not null,
)
insert into users(username,pass,mod,ngaysinh, gioitinh, diachi, sdt) values ('Admin','pass',1, 12/2/2023,N'Nữ', N'Hà Nội', 12345)
select * from users
delete users
create table student
(
	MaDocGia varchar(250) not null primary key,
	HoTen varchar(250) not null,
	NgaySinh datetime not null,
	Diachi varchar(250) not null,
	Sdt int not null,
)
insert into student (MaDocGia, HoTen, NgaySinh, DiaChi, Sdt) values(1,N'Phạm Thị A',1/2/2003,N'Hà Nội',12345);

create table PhieuMuonTra
(
	MaPhieu varchar(250) not null primary key,
	MaDocGia varchar(250) not null,
	foreign key(MaDocGia)references DocGia(MaDocGia)
)
create table NhaXuatBan
(
	MaNhaXuatBan varchar(250) not null primary key,
	TenNhaXuatBan varchar(250) not null,
	DiaChi varchar(250) not null,
	SoDienThoai int not null
)
create table TheLoai
(
	MaTheLoai varchar(250) not null primary key,
	TenTheLoai varchar(250) not null,
)

create table TacGia
(
	MaTacGia varchar(250) not null primary key,
	TenTacGia varchar(250) not null,
)
create table Sach
(
	MaSach varchar(250) not null primary key,
	TenSach varchar(250) not null,
	NamXuatBan int not null,
	MaNhaXuatBan varchar(250) not null,
	foreign key(MaNhaXuatBan) references NhaXuatBan(MaNhaXuatBan),
	MaTheLoai varchar(250),
	foreign key (MaTheLoai) references TheLoai(MaTheLoai),
	MaTacGia varchar(250) not null,
	foreign key (MaTacGia) references TacGia(MaTacGia),
	SoLuong int not null,
	GhiChu varchar(250) not null,
)
create table SachMuon
(
	MaSach varchar(250) not null,
	foreign key(MaSach) references Sach(MaSach),
	MaPhieu varchar(250) not null,
	foreign key(MaPhieu)references PhieuMuonTra(MaPhieu),
	NgayMuon datetime not null,
	NgayTra datetime not null,
)
