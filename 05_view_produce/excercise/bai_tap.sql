-- BƯỚC 1
-- Tạo cơ sở dữ liệu demo
DROP DATABASE IF EXISTS demo;
CREATE DATABASE demo;
USE demo;

-- BƯỚC 2
-- Tạo bảng Products
CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    productCode VARCHAR(10) NOT NULL,
    productName VARCHAR(25) NOT NULL,
    productPrice INT,
    productAmount INT,
    productDescription TEXT,
    productStatus BIT(1)
);

-- BƯỚC 3
-- Chèn một số dữ liệu mẫu cho bảng Products.
INSERT INTO products (productCode,productName,productPrice,productAmount,productDescription,productStatus) 
VALUES ('SP001','Kem',3000,5,'Kem lạnh cho trời nóng',1),
	   ('SP002','bánh',2000,7,'Bánh cho trẻ em',1),
	   ('SP003','kẹo',1000,8,'Kẹo mút chupa-chup',1),
	   ('SP004','sữa',5000,2,'sữa tươi không đường',1),
	   ('SP005','bút',7000,3,'bút viết',1);
       
-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
CREATE UNIQUE INDEX i_productCode 
	ON products(productCode);

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
CREATE UNIQUE INDEX i_productName_productPrice 
	ON products (productName, productPrice);

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
EXPLAIN 
SELECT *
FROM products 
WHERE productCode = 'SP001';

EXPLAIN 
SELECT * 
FROM products
WHERE productName = 'kẹo';

-- BƯỚC 4
-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
CREATE VIEW products_v AS
    SELECT 
        productCode, productName, productPrice, productStatus
    FROM
        products;

-- Tiến hành sửa đổi view
INSERT INTO products_v
VALUES ('SP006','vở',10000,1);

-- Tiến hành xoá view
DROP VIEW products_v;

-- Bước 5
-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
DELIMITER $$
CREATE PROCEDURE find_all_product() 
BEGIN 
	SELECT * 
    FROM products;
END $$
DELIMITER ;
-- gọi
CALL find_all_product();

-- Tạo store procedure thêm một sản phẩm mới
DELIMITER $$
CREATE PROCEDURE add_product(productCode VARCHAR(10), productName VARCHAR(25), productPrice INT) 
BEGIN 
	INSERT INTO products (productCode, productName, productPrice)
    VALUES (productCode, productName, productPrice);
END $$
DELIMITER ;
-- gọi
CALL add_product('SP007', 'Dầu gội', 50000);

-- Tạo store procedure sửa thông tin sản phẩm theo id
DELIMITER $$
CREATE PROCEDURE edit_product(product_code VARCHAR(10), product_price INT) 
BEGIN 
	SET sql_safe_updates = 0;
	UPDATE products
    SET productPrice = product_price
    WHERE productCode = product_code;
    SET sql_safe_updates = 1;
END $$
DELIMITER ;
-- gọi
CALL edit_product('SP007','60000');

-- Tạo store procedure xoá sản phẩm theo id
DELIMITER $$
CREATE PROCEDURE delete_product(product_id INT) 
BEGIN 
	DELETE 
    FROM products
    WHERE id = product_id;
END $$
DELIMITER ;
-- gọi
CALL delete_product(6);