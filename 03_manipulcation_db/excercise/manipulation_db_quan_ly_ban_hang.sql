USE quan_ly_ban_hang;

INSERT INTO khach_hang
VALUES (1,'Minh Quan',10),
(2,'Ngoc Oanh',20),
(3,'Hong Ha',50);

INSERT INTO don_dat_hang
VALUES (1,1,'2006-03-21',NULL),
(2,2,'2006-03-23',NULL),
(3,1,'2006-03-16',NULL);

INSERT INTO san_pham
VALUES (1,'May Giat',3),
(2,'Tu Lanh',5),
(3,'Dieu Hoa',7),
(4,'Quat',1),
(5,'Bep Dien',2);

INSERT INTO chi_tiet_hoa_don (ma_dat_hang, ma_san_pham, so_luong)
VALUES (1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
SELECT ma_dat_hang, ngay_dat_hang, tong_tien
FROM don_dat_hang;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT k.ma_khach_hang, k.ten_khach_hang, d.ngay_dat_hang, s.ten_san_pham
FROM khach_hang k
JOIN don_dat_hang d ON k.ma_khach_hang = d.ma_khach_hang
JOIN chi_tiet_hoa_don c ON d.ma_dat_hang = c.ma_dat_hang
JOIN san_pham s ON c.ma_san_pham = s.ma_san_pham;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT k.ma_khach_hang, k.ten_khach_hang, d.ngay_dat_hang
FROM khach_hang k
LEFT JOIN don_dat_hang d ON k.ma_khach_hang = d.ma_khach_hang
WHERE d.ngay_dat_hang IS NULL;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn
-- (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn.
-- Giá bán của từng loại được tính = odQTY*pPrice)
SELECT d.ma_dat_hang, d.ngay_dat_hang, SUM((s.gia_san_pham * c.so_luong)) AS tong_tien
FROM don_dat_hang d
JOIN chi_tiet_hoa_don c ON d.ma_dat_hang = c.ma_dat_hang
JOIN san_pham s ON c.ma_san_pham = s.ma_san_pham
GROUP BY d.ma_dat_hang;