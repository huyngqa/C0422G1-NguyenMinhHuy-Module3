USE quan_ly_sinh_vien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT 
    *
FROM
    mon_hoc
WHERE
    tin_dung = (SELECT 
            MAX(tin_dung)
        FROM
            mon_hoc);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT 
    mh.ma_mon_hoc, ten_mon_hoc, tin_dung, diem
FROM
    mon_hoc mh
        JOIN
    diem d ON mh.ma_mon_hoc = d.ma_mon_hoc
WHERE
    diem = (SELECT 
            MAX(diem)
        FROM
            diem);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT 
    s.*, AVG(diem) AS diem_trung_binh
FROM
    sinh_vien s
        LEFT JOIN
    diem d ON s.ma_sinh_vien = d.ma_sinh_vien
GROUP BY s.ma_sinh_vien
ORDER BY diem_trung_binh DESC;