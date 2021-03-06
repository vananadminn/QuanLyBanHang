USE QuanLyBanHang
--1.	In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất.
SELECT MASP, TENSP FROM SANPHAM WHERE NUOCSX = 'Trung Quoc'
--2.	In ra danh sách các sản phẩm (MASP, TENSP) có đơn vị tính là “cay”, ”quyen”.
SELECT MASP,TENSP FROM SANPHAM WHERE DVT = 'CAY'
SELECT MASP,TENSP FROM SANPHAM WHERE DVT = 'QUYEN'
--3.	In ra danh sách các sản phẩm (MASP,TENSP) có mã sản phẩm bắt đầu là “B” và kết thúc là “01”.
SELECT MASP,TENSP FROM SANPHAM WHERE MASP LIKE 'B%' AND MASP LIKE '%01'
--4.	In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quốc” sản xuất có giá từ 30.000 đến 40.000.
SELECT MASP,TENSP FROM SANPHAM WHERE NUOCSX = 'Trung Quoc' AND GIA BETWEEN 30000 AND 40000 
--5.	In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” hoặc “Thai Lan” sản xuất có giá từ 30.000 đến 40.000.
SELECT MASP,TENSP FROM SANPHAM WHERE NUOCSX = 'Trung Quoc' or NUOCSX ='Thai Lan' AND GIA BETWEEN 30000 AND 40000
--6.	In ra các số hóa đơn, trị giá hóa đơn bán ra trong ngày 1/1/2007 và ngày 2/1/2007.
SELECT SOHD,TRIGIA FROM HOADON WHERE NGHD BETWEEN '1/1/2007' AND '2/1/2007'
--7.	In ra các số hóa đơn, trị giá hóa đơn trong tháng 1/2007, sắp xếp theo ngày (tăng dần) và trị giá của hóa đơn (giảm dần).
SELECT SOHD,TRIGIA FROM HOADON WHERE MONTH(NGHD) = 1 AND YEAR(NGHD) = 2007 ORDER BY NGHD ASC, TRIGIA DESC
--8.	In ra danh sách các khách hàng (MAKH, HOTEN) đã mua hàng trong ngày 1/1/2007.
SELECT MAKH,HOTEN FROM KHACHHANG JOIN HOADON ON KHACHHANG.MAKH = HOADON.MAKH WHERE KHACHHANG.NGDK = '1/1/2017'
--9.	In ra số hóa đơn, trị giá các hóa đơn do nhân viên có tên “Nguyen Van B” lập trong ngày 28/10/2006.
--10.	In ra danh sách các sản phẩm (MASP,TENSP) được khách hàng có tên “Nguyen Van A” mua trong tháng 10/2006.
select * from sanpham
select * from HOADON
select * from KHACHHANG
select * from 
select * from  