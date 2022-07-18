USE quan_ly_sinh_vien;

SELECT dia_chi, COUNT(ma_sinh_vien) AS 'Số lượng học viên'
FROM sinh_vien
GROUP BY dia_chi;

SELECT 
    s.ma_sinh_vien, s.ten_sinh_vien, AVG(diem)
FROM
    sinh_vien s
        JOIN
    diem m ON s.ma_sinh_vien = m.ma_sinh_vien
GROUP BY s.ma_sinh_vien , s.ten_sinh_vien
HAVING AVG(diem) >= ALL (SELECT AVG(diem) FROM diem GROUP BY diem.ma_sinh_vien);