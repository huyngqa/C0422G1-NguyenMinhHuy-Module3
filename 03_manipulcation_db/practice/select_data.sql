USE quan_ly_sinh_vien;

SELECT 
    *
FROM
    sinh_vien;

SELECT 
    *
FROM
    sinh_vien
WHERE
    trang_thai = TRUE;

SELECT 
    *
FROM
    mon_hoc
WHERE
    tin_dung < 10;

SELECT 
    s.ma_sinh_vien, s.ten_sinh_vien, l.ten_lop
FROM
    sinh_vien s
        JOIN
    lop l ON s.ma_lop = l.ma_lop;

SELECT 
    s.ma_sinh_vien, s.ten_sinh_vien, l.ten_lop
FROM
    sinh_vien s
        JOIN
    lop l ON s.ma_lop = l.ma_lop
WHERE
    l.ten_lop = 'A1';

SELECT 
    s.ma_sinh_vien, s.ten_sinh_vien, m.ten_mon_hoc, d.diem
FROM
    sinh_vien s
        JOIN
    diem d ON s.ma_sinh_vien = d.ma_sinh_vien
        JOIN
    mon_hoc m ON d.ma_mon_hoc = m.ma_mon_hoc;

SELECT 
    s.ma_sinh_vien, s.ten_sinh_vien, m.ten_mon_hoc, d.diem
FROM
    sinh_vien s
        JOIN
    diem d ON s.ma_sinh_vien = d.ma_sinh_vien
        JOIN
    mon_hoc m ON d.ma_mon_hoc = m.ma_mon_hoc
WHERE
    m.ten_mon_hoc = 'CF';
