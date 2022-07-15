USE quan_ly_sinh_vien;
-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
SELECT *
FROM sinh_vien
WHERE ten_sinh_vien LIKE 'h%';

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
SELECT *
FROM lop
WHERE MONTH(ngay_bat_dau) = 12;

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
SELECT *
FROM mon_hoc
WHERE tin_dung BETWEEN 3 AND 5;

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
SET sql_safe_updates = 0;
UPDATE sinh_vien 
SET ma_lop = 2
WHERE ten_sinh_vien = 'hung';
SET sql_safe_updates = 1;

-- Hiển thị các thông tin: StudentName, SubName, Mark.
-- Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
SELECT s.ten_sinh_vien, m.ten_mon_hoc, d.diem
FROM sinh_vien s
JOIN diem d
ON s.ma_sinh_vien = d.ma_sinh_vien
JOIN mon_hoc m 
ON d.ma_mon_hoc = m.ma_mon_hoc
ORDER BY d.diem DESC , s.ten_sinh_vien;