USE `full-stack-ecommerce`;

SET foreign_key_checks = 0;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` smallint unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

--
-- Data for table `city`
--

INSERT INTO `city` (id, name) VALUES
(1, 'An Giang'),
(2, 'Bà Rịa - Vũng Tàu'),
(3, 'Bắc Giang'),
(4, 'Bắc Kạn'),
(5, 'Bạc Liêu'),
(6, 'Bắc Ninh'),
(7, 'Bến Tre'),
(8, 'Bình Định'),
(9, 'Bình Dương'),
(10, 'Bình Phước'),
(11, 'Bình Thuận'),
(12, 'Cà Mau'),
(13, 'Cần Thơ'),
(14, 'Cao Bằng'),
(15, 'Đà Nẵng'),
(16, 'Đắk Lắk'),
(17, 'Đắk Nông'),
(18, 'Điện Biên'),
(19, 'Đồng Nai'),
(20, 'Đồng Tháp'),
(21, 'Gia Lai'),
(22, 'Hà Giang'),
(23, 'Hà Nam'),
(24, 'Hà Nội'),
(25, 'Hà Tĩnh'),
(26, 'Hải Dương'),
(27, 'Hải Phòng'),
(28, 'Hậu Giang'),
(29, 'Hòa Bình'),
(30, 'Hồ Chí Minh'),
(31, 'Hưng Yên'),
(32, 'Khánh Hòa'),
(33, 'Kiên Giang'),
(34, 'Kon Tum'),
(35, 'Lai Châu'),
(36, 'Lâm Đồng'),
(37, 'Lạng Sơn'),
(38, 'Lào Cai'),
(39, 'Long An'),
(40, 'Nam Định'),
(41, 'Nghệ An'),
(42, 'Ninh Bình'),
(43, 'Ninh Thuận'),
(44, 'Phú Thọ'),
(45, 'Phú Yên'),
(46, 'Quảng Bình'),
(47, 'Quảng Nam'),
(48, 'Quảng Ngãi'),
(49, 'Quảng Ninh'),
(50, 'Quảng Trị'),
(51, 'Sóc Trăng'),
(52, 'Sơn La'),
(53, 'Tây Ninh'),
(54, 'Thái Bình'),
(55, 'Thái Nguyên'),
(56, 'Thanh Hóa'),
(57, 'Thừa Thiên - Huế'),
(58, 'Tiền Giang'),
(59, 'Trà Vinh'),
(60, 'Tuyên Quang'),
(61, 'Vĩnh Long'),
(62, 'Vĩnh Phúc'),
(63, 'Yên Bái');



--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;

CREATE TABLE `district` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `city_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_city` (`city_id`),
  CONSTRAINT `fk_city` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

--
-- Dumping data for table `district`
--

-- Districts for Hà Nội (city_id = 24)
INSERT INTO `district` (name, city_id) VALUES
('Ba Đình', 24),
('Hoàn Kiếm', 24),
('Tây Hồ', 24),
('Long Biên', 24),
('Cầu Giấy', 24),
('Đống Đa', 24),
('Hai Bà Trưng', 24),
('Hoàng Mai', 24),
('Thanh Xuân', 24),
('Sóc Sơn', 24),
('Đông Anh', 24),
('Gia Lâm', 24),
('Nam Từ Liêm', 24),
('Thanh Trì', 24),
('Bắc Từ Liêm', 24),
('Mê Linh', 24),
('Hà Đông', 24),
('Sơn Tây', 24),
('Ba Vì', 24),
('Phúc Thọ', 24),
('Đan Phượng', 24),
('Hoài Đức', 24),
('Quốc Oai', 24),
('Thạch Thất', 24),
('Chương Mỹ', 24),
('Thanh Oai', 24),
('Thường Tín', 24),
('Phú Xuyên', 24),
('Ứng Hòa', 24),
('Mỹ Đức', 24);

-- Districts for Hồ Chí Minh (city_id = 30)
INSERT INTO `district` (name, city_id) VALUES
('Quận 1', 30),
('Quận 2', 30),
('Quận 3', 30),
('Quận 4', 30),
('Quận 5', 30),
('Quận 6', 30),
('Quận 7', 30),
('Quận 8', 30),
('Quận 9', 30),
('Quận 10', 30),
('Quận 11', 30),
('Quận 12', 30),
('Bình Tân', 30),
('Bình Thạnh', 30),
('Gò Vấp', 30),
('Phú Nhuận', 30),
('Tân Bình', 30),
('Tân Phú', 30),
('Thủ Đức', 30),
('Bình Chánh', 30),
('Cần Giờ', 30),
('Củ Chi', 30),
('Hóc Môn', 30),
('Nhà Bè', 30);

-- Districts for Đà Nẵng (city_id = 15)
INSERT INTO `district` (name, city_id) VALUES
('Hải Châu', 15),
('Cẩm Lệ', 15),
('Thanh Khê', 15),
('Liên Chiểu', 15),
('Ngũ Hành Sơn', 15),
('Sơn Trà', 15),
('Hòa Vang', 15),
('Hoàng Sa', 15);

-- Districts for Hải Phòng (city_id = 27)
INSERT INTO `district` (name, city_id) VALUES
('Hồng Bàng', 27),
('Lê Chân', 27),
('Ngô Quyền', 27),
('Kiến An', 27),
('Hải An', 27),
('Dương Kinh', 27),
('Đồ Sơn', 27),
('An Dương', 27),
('An Lão', 27),
('Kiến Thụy', 27),
('Thủy Nguyên', 27),
('Tiên Lãng', 27),
('Vĩnh Bảo', 27),
('Cát Hải', 27),
('Bạch Long Vĩ', 27);

-- Districts for Cần Thơ (city_id = 13)
INSERT INTO `district` (name, city_id) VALUES
('Ninh Kiều', 13),
('Bình Thủy', 13),
('Cái Răng', 13),
('Ô Môn', 13),
('Thốt Nốt', 13),
('Vĩnh Thạnh', 13),
('Cờ Đỏ', 13),
('Phong Điền', 13),
('Thới Lai', 13);

-- Districts for Huế (Thừa Thiên - Huế) (city_id = 57)
INSERT INTO `district` (name, city_id) VALUES
('Huế', 57),
('Hương Trà', 57),
('Hương Thủy', 57),
('Phong Điền', 57),
('Quảng Điền', 57),
('Phú Vang', 57),
('Phú Lộc', 57),
('Nam Đông', 57),
('A Lưới', 57);

SET foreign_key_checks = 1;