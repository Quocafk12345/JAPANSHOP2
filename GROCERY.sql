
CREATE DATABASE printing;
GO

USE printing;
GO
DROP TABLE CART
CREATE TABLE admin(
	id BIGINT NOT NULL PRIMARY KEY IDENTITY,
	added_date DATETIME NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE,
	password NVARCHAR(255) NOT NULL,
	name NVARCHAR(255) NOT NULL
);
GO
INSERT INTO admin(added_date, email, password, name) VALUES ('2020-05-16 00:46:08', 'quocntps31889@fpt.edu.vn', 'Quocvjp12345', N'Quốc');

CREATE TABLE cart(
	id BIGINT NOT NULL PRIMARY KEY IDENTITY,
	price FLOAT NOT NULL,
	quantity INT NOT NULL,
	total_price FLOAT NOT NULL,
	customer_id BIGINT NOT NULL,
	product_id BIGINT NOT NULL,
	mrp_price FLOAT NOT NULL,
);
GO

SELECT * FROM product and ca;


INSERT INTO cart(price, quantity, total_price, customer_id, product_id, mrp_price) VALUES
(190, 1, 190, 1, 11,200);

CREATE TABLE contact(
	id BIGINT NOT NULL PRIMARY KEY IDENTITY,
	contact_date DATETIME NOT NULL,
	email VARCHAR(50) NOT NULL,
	message VARCHAR(1000) NOT NULL,
	name VARCHAR(50) NOT NULL,
	subject VARCHAR(50) NOT NULL
);
GO

INSERT INTO contact (contact_date, email, message, name, subject) VALUES 
('2020-07-25 19:45:20', 'quocntps31889@fpt.edu.vn', 'Hi, This is testing email contacts.', N'Nguyễn Thái Quốc', 'Testing');
GO

CREATE TABLE customer(
	id BIGINT NOT NULL PRIMARY KEY IDENTITY,
	address VARCHAR(255) NOT NULL,
	added_date DATETIME NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE,
	gender VARCHAR(6) NOT NULL,
	name VARCHAR(50) NOT NULL,
	password VARCHAR(60) NOT NULL,
	phone VARCHAR(10) NOT NULL UNIQUE,
	valid BIT NOT NULL,
	pin_code VARCHAR(255) NOT NULL
);
GO

INSERT INTO customer(address, added_date, email, gender, name, password, phone,valid, pin_code) VALUES
(N'Quang Binh', '2022-05-10 11:11:01', 'quocntps31889@fpt.edu.vn', 'Nam', N'Quốc', 'Quocvjp12345', '0816352559', 1, '40033');
GO

CREATE TABLE orders(
	id BIGINT NOT NULL PRIMARY KEY IDENTITY,
	active BIT NOT NULL,
	amount FLOAT NOT NULL,
	customer_address NVARCHAR(255) NOT NULL,
	customer_address_type NVARCHAR(15) NOT NULL,
	customer_email VARCHAR(50) NOT NULL,
	customer_name NVARCHAR(30) NOT NULL,
	customer_phone VARCHAR(10) NOT NULL,
	order_date DATETIME NOT NULL,
	order_num INT NOT NULL UNIQUE,
	pin_code NVARCHAR(10) NOT NULL
)

INSERT INTO orders (active, amount, customer_address, customer_address_type, customer_email, customer_name, customer_phone, order_date, order_num, pin_code) VALUES
(1, 284, N'Qúy Thuận, Bố Trạch, Quảng Bình', N'Quê quán', 'quocntps31889@fpt.edu.vn', N'Quốc', '1223334560', '2022-07-25 19:59:26', 1000, '160803'),
(1, 95, N'Qúy Thuận, Bố Trạch, Quảng Bình', N'Quê quán', 'quocntps31889@fpt.edu.vn', N'Quốc', '1223334560', '2022-07-25 19:59:26', 1001, '160803'),
(1, 65, N'Qúy Thuận, Bố Trạch, Quảng Bình', N'Quê quán', 'quocntps31889@fpt.edu.vn', N'Quốc', '1223334560', '2022-07-25 19:59:26', 1002, '160803');
GO

CREATE TABLE order_detail(
	id BIGINT NOT NULL PRIMARY KEY IDENTITY,
	amount FLOAT NOT NULL,
	price FLOAT NOT NULL,
	quantity INT NOT NULL,
	order_id BIGINT NOT NULL,
	product_id BIGINT NOT NULL,
	  payment_id INT NOT NULL,
	mrp_price FLOAT NOT NULL,
	  order_status VARCHAR(25) NOT NULL,
	payment_mode VARCHAR(MAX) NOT NULL
);
GO

INSERT INTO order_detail (amount, price, quantity, order_id, product_id, payment_id, order_status, mrp_price, payment_mode) VALUES
(284, 142, 2, 237, 10, 1000, 'Delivered', 150, 'COD'),
(95, 95, 1, 238, 9, 1000, 'Delivered', 100, 'COD'),
(65, 65, 1, 239, 5, 1000, 'Delivered', 72, 'COD');
GO
CREATE TABLE product(
	id BIGINT NOT NULL PRIMARY KEY IDENTITY,
	active BIT NOT NULL,--Trạng thái
	code NVARCHAR(5) NOT NULL UNIQUE,--Mã sản phẩm
	create_date DATETIME NOT NULL,--Ngày tháng tạo sản phẩm
	description NVARCHAR(MAX) NOT NULL,--Mô tả
	image NVARCHAR(255),
	name NVARCHAR(MAX) NOT NULL,
	price FLOAT NOT NULL,--Gía gốc
	mrp_price FLOAT NOT NULL --Gía bán cho khách hàng
)
GO
INSERT INTO product (active, code, create_date, description, image, name, price, mrp_price) VALUES
(1, 'P11', GETDATE(), N'In catalogue số lượng ít lấy liền là một dịch vụ có thể nói là hết sức cần thiết đối với mọi doanh nghiệp đang vận hành kinh doanh, vì catalogue là 1 sản phẩm giới thiệu mà chúng ta có thể cầm trên tay và chào khách hàng của mình khi đi tư vấn hoặc kí kết hợp đồng.', '/resources\in-catalogue-1.jpg', N'In catalogue số lượng ít lấy liền giá rẻ chỉ có tại Now Ads', 500, 1000),
(1, 'P112', GETDATE(), N'In catalogue số lượng ít lấy liền là một dịch vụ có thể nói là hết sức cần thiết đối với mọi doanh nghiệp đang vận hành kinh doanh, vì catalogue là 1 sản phẩm giới thiệu mà chúng ta có thể cầm trên tay và chào khách hàng của mình khi đi tư vấn hoặc kí kết hợp đồng.', '/resources\ly-do-in-tem-shop-duoc-su-dung-pho-bien-4.jpg', N'In catalogue số lượng ít lấy liền giá rẻ chỉ có tại Now Ads', 500, 1000),
(1, 'P113', GETDATE(), N'In catalogue số lượng ít lấy liền là một dịch vụ có thể nói là hết sức cần thiết đối với mọi doanh nghiệp đang vận hành kinh doanh, vì catalogue là 1 sản phẩm giới thiệu mà chúng ta có thể cầm trên tay và chào khách hàng của mình khi đi tư vấn hoặc kí kết hợp đồng.', 'https://nowads.com.vn/wp-content/uploads/2024/04/Giay-ford-350gsm.jpg
', N'Giấy ford', 500, 1000);
update product set price='2500' where code='p11'
CREATE TABLE payment(
	id BIGINT NOT NULL PRIMARY KEY IDENTITY,
	active BIT NOT NULL,
	total_price FLOAT NOT NULL,
	customer_name NVARCHAR(50),
	customer_id BIGINT FOREIGN KEY REFERENCES customer(id) NOT NULL,
)


https://nowads.com.vn/wp-content/uploads/2024/04/Giay-ford-350gsm.jpg
--Tạo chỉ mục cho cart
--Các index này sẽ giúp tăng tốc độ truy vấn dữ liệu khi thực hiện
--các thao tác tìm kiếm, lọc, sắp xếp dựa trên các cột được tạo index.
--Điều này rất quan trọng khi làm việc với các bảng có dữ liệu lớn.
CREATE INDEX idx_cart_customer_id ON cart (customer_id);
CREATE INDEX idx_cart_product_id ON cart (product_id);
GO
--Tạo chỉ mục cho order_detail
CREATE INDEX idx_order_detail_product_id ON order_detail(product_id);
GO

--Cấu hình AUTO_INCREMNT cho các bảng
--RESSED: Đặt lại giá trị ban đầu (1)
--DBCC CHECKIDENT là câu lệnh dùng để kiểm tra và điều chỉnh giá trị hiện tại của trường AUTO_INCREMENT trong bảng.
DBCC CHECKIDENT('admin', RESSED, 1);

-- AUTO_INCREMENT for table `cart`
DBCC CHECKIDENT ('cart', RESEED, 5);
GO

-- AUTO_INCREMENT for table `contact`
DBCC CHECKIDENT ('contact', RESEED, 2);
GO

-- AUTO_INCREMENT for table `customer`
DBCC CHECKIDENT ('customer', RESEED, 8);
GO

-- AUTO_INCREMENT for table `orders`
DBCC CHECKIDENT ('orders', RESEED, 239);
GO

-- AUTO_INCREMENT for table `order_detail`
DBCC CHECKIDENT ('order_detail', RESEED, 234);
GO

-- AUTO_INCREMENT for table `product`
DBCC CHECKIDENT ('product', RESEED, 11);
GO

